class OrganizationController < ApplicationController
  before_action :require_adm, only: [:new, :create]
  before_action :require_ong_login, only: [:index,:edit,:update, :stats]
  before_action :require_login, only: [:show, :sub]

  def index
    @ong=current_ong
    @posts=current_ong.posts
  end

  def new
    @ong = Organization.new
  end

  def create
    @ong = Organization.new(ong_params)
    @ong.rating=0
    if @ong.save
      redirect_to root_url
    else
      render :action=>'new'
    end
  end

  def show
      @ong=Organization.find(params[:id])
      @rate = nil
      if @ong.ratings.exists?(["user_id = ?", current_user.id])
        @rate = current_user.ratings.find_by("organization_id = ?", @ong.id).cant
      end
      @subeado=subscripto?(current_user,@ong)
  end

  def edit
    @ong=Organization.find(params[:id])
    if current_ong.id != @ong.id
      redirect_to organization_index_path
    end
  end

  def update
    @ong=Organization.find(params[:id])
    if current_ong.id==@ong.id
      if @ong.update(ong_update_params)
        redirect_to organization_index_path
      else
        render :edit
      end
    else
      redirect_to organization_index_path
    end
  end


  def sub
    @sub=Follow.new
    @ong=Organization.find(params[:id])
    current_user.follows<<@sub
    @ong.follows<<@sub
    if @sub.save
      redirect_to organization_path(params[:id])
    else
      redirect_to root_path
    end
  end

  def rate
    @rtng=Rating.new
    @ong=Organization.find(params[:id])
    current_user.ratings<<@rtng
    @ong.ratings<<@rtng
    @rtng.cant=params[:points]
    if @rtng.save
      total=0
      @ong.ratings.each do |rati|
        total+=rati.cant
      end
      if @ong.update(rating: total/@ong.ratings.size)
        redirect_to organization_path(params[:id])
      else
        flash.now[:error] = 'Hubo un error inesperado'
        redirect_to organization_path(params[:id])
      end
    else
      flash.now[:error] = 'El número ingresado no es correcto'
      render :action=>'show'
    end
  end

  def stats
    @ong=Organization.find(params[:id])
    if @ong.id != current_ong.id
      redirect_to organization_index_path
    end
    @flws= @ong.follows.order(created_at: :asc).limit(5)
    @subs=[]
    @flws.each do |f|
      @subs << User.find(f.user_id)
    end
    @post=@ong.posts.order(cantAct: :desc).first
    @disp=@ong.posts.where("expired = ?",false)
  end

  private
  def ong_params
    params.require(:organization).permit(:nombreOng,:tel,:password,:email)
  end
  def ong_update_params
    params.require(:organization).permit(:nombreOng,:tel,:desc,:sede,:ftOng,:bnnr)
  end
end
