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
      #aca iria lo de la response
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
      if current_ong
        @post.appointments.each do |ap|
          @users << User.find(ap.user_id)
        end
      end
    else
      redirect_to root_url
    end
  end

  def update
    @post=Post.find(params[:id])
    if signed_in?
      if !enlistado?(current_user,@post) && @post.cantAct < @post.cantMax
        @appointment=Appointment.new
        current_user.appointments<<@appointment
        @post.appointments<<@appointment

        if @appointment.save && @post.update(cantAct: @post.cantAct+1)
          redirect_to post_path(params[:id])
        else
          flash.now[:error] = 'No se pudo concretar la accion, intentalo de nuevo más tarde'
          render "show"
        end
      else
        flash.now[:error] = 'ya te enlistaste a esta actividad o está llena'
        render "show"
      end
    end
  end

  def release
    @post=Post.find(params[:id])
    if @post.update(expired: true)
      @aps=Appointment.where("post_id = ?", params[:id])
      @aps.each do|ap|
        @user=User.find(ap.user_id)
        exp=@user.exp + @post.exp
        @user.update(exp: exp)
      end
      Appointment.destroy(@aps.map(&:id))
    else
      flash.now[:error] = 'No se pudo concretar la accion, intentalo de nuevo más tarde'
    end
    redirect_to root_path
  end

  private
  def post_params
    params.require(:post).permit(:title,:descPst,:lugar,:cantMin,:cantMax,:exp,:hora,:ftPst)
  end

end
