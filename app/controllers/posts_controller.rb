class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end
  


  private

  def post_params
    params.require(:post).permit(:image, :content).merge(user_id: current_user.id)
  end
end
