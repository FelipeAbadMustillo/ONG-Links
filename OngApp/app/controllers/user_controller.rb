class UserController < ApplicationController
  def showAll
    @users = User.all
  end

  def new
    @user= User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to :action=>'showAll'
    else
      render :action=>'new'
    end
  end

  private
  def user_params
    params.require(:users).permit(:nombreUsu,:apellidoUsu,:pwdUsu,:edad,:ocupacion,:mail)
  end
end
