class PostController < ApplicationController
  before_action :require_ong_login, except: [:show, :update]

  def new
    @post=Post.new
  end

  def create
    @post=Post.new(post_params)
    @post.cantAct=0
    @post.expired=false
    current_ong.posts << @post
    if @post.save
      redirect_to organization_index_path
    else
      render "new"
    end
  end

  def destroy
    @post=Post.find(params[:id]).destroy
    redirect_to organization_index_path
  end

  def show
    if signed_in? || current_ong
      @post=Post.find(params[:id])
      @users=[]
      @post.appointments.each do |ap|
        @users << User.find(ap.user_id)
      end
    else
      redirect_to root_url
    end
  end

  def update
    @post=Post.find(params[:id])
    if signed_in? && !enlistado?(current_user,@post)
      aux=@post.cantAct + 1 >= @post.cantMax
      @appointment=Appointment.new
      current_user.appointments<<@appointment
      @post.appointments<<@appointment

      if @appointment.save && @post.update(cantAct: @post.cantAct+1, expired: aux)
        redirect_to post_path(params[:id])
      else
        flash.now[:error] = 'No se pudo concretar la accion, intentalo de nuevo más tarde'
        render "show"
      end
    else
      flash.now[:error] = 'ya te enlistaste a esta actividad'
      render "show"
    end
  end

  def release
    #algoritmo de terminar post entrgando toda la exp correspondiente
  end

  private
  def post_params
    params.require(:post).permit(:descPst,:lugar,:cantMin,:cantMax,:postTime,:hora,:title)
  end

end
