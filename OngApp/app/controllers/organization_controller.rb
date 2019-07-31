class OrganizationController < ApplicationController
  before_action :require_login, only: [:new, :create]
  def index
    if current_ong
      @ong=current_ong
    else
      redirect_to ong_sign_in_path
    end
  end

  def new
    if current_user.admin
      @ong = Organization.new
    else
      redirect_to root_path#new_ong_err_path
    end
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

  private
  def ong_params
    params.require(:organization).permit(:nombreOng,:tel,:password,:email)
  end
end
