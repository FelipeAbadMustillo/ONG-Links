class AppointmentController < ApplicationController
  before_action :require_ong_login
  def destroy
    @post=Post.find(params[:post_id])
    if current_ong.posts.exists?(@post.id)
      aux = @post.cantAct-1 < @post.cantMax
      if @post.update(cantAct: @post.cantAct-1, expired: !aux)
        Appointment.find_by("user_id = ? AND post_id = ?",params[:user_id],params[:post_id]).destroy
      end
      redirect_to post_path(@post)
    else
      redirect_to root_url
    end
  end
end
