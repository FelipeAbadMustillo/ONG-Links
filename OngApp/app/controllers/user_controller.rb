class UserController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @usuario= User.new
  end

  def create
    @usuario = User.new(user_params)
    @usuario.exp=0
    @usuario.cantFlw=0
    if @usuario.save
      redirect_to :action=>'index'
    else
      render :action=>'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:nombreUsu,:apellidoUsu,:pwdUsu,:edad,:ocupacion,:mail,:localidadUsu,:telUsu)
  end
end
