class OrganizationController < ApplicationController
  before_action :require_adm, only: [:new, :create]
  before_action :require_ong_login, only: [:index]
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
    @rtng.cant=params[:points][0]
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

  private
  def ong_params
    params.require(:organization).permit(:nombreOng,:tel,:password,:email)
  end
end
