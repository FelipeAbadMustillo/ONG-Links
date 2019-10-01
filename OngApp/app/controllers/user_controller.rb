class UserController < Clearance::UsersController
  before_action :require_login, only: [:index]
  before_action :any_logged, except: [:index,:show]
  before_action :require_ong_login, only: [:show]
  def index
    @usuario=current_user
    if params[:search]
      @ongs=Organization.where("nombreOng LIKE ?" , "%#{params[:search]}%")
    else
      @ongs=nil
    end
    @lastPost=[]
    current_user.follows.each do |fw|
      @ong=Organization.find(fw.organization_id)
      @lastPost<<@ong.posts.order("created_at").last
    end
  end

  def new
    @usuario= User.new
  end

  def create
    @usuario = User.new(user_params)
    @usuario.exp=0
    @usuario.admin=false
    if @usuario.save
      sign_in @usuario
      redirect_to root_url
    else
      render :action=>'new'
    end
  end

  def show
    @usuario=User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:nombreUsu,:apellidoUsu,:password,:edad,:ocupacion,:email,:localidadUsu,:telUsu,:desc)
  end
end
