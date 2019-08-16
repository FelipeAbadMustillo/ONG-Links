class OrganizationController < ApplicationController
  before_action :require_adm, only: [:new, :create]
  before_action :require_ong_login, only: [:index]
  before_action :require_login, only: [:show]

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

  private
  def ong_params
    params.require(:organization).permit(:nombreOng,:tel,:password,:email)
  end
end
