class PostController < ApplicationController
  before_action :require_ong_login
  
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
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to organization_index_path
  end

  private
  def post_params
    params.require(:post).permit(:descPst,:lugar,:cantMin,:cantMax,:postTime,:hora)
  end

end
