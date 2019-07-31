class OngSessionController < ApplicationController
  def new
  end

  def create
    @ong = Organization.find_by_email(ong_params[:email])
    if @ong && @ong.authenticate(ong_params[:password])
      session[:ong_id] = @ong.id
      redirect_to root_url
    else
      flash.now[:alert] = "La contraseña o el mail son incorrectos"
      render "new"
    end
  end

  def destroy
    session[:ong_id] = nil
    redirect_to root_url
  end

  private

  def ong_params
    params.require(:ong_session).permit(:password,:email)
  end

end
