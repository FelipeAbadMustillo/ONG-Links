class UserController < Clearance::UsersController
  before_action :require_login, only: [:index]
  before_action :any_logged, except: [:index]
  def index
    @usuario=current_user
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

  private
  def user_params
    params.require(:user).permit(:nombreUsu,:apellidoUsu,:password,:edad,:ocupacion,:email,:localidadUsu,:telUsu)
  end
end
