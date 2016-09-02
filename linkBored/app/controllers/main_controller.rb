class MainController < ApplicationController

  before_action :is_authenticated, only: [:newpost,:createpost]
  def index
    @posts = Post.all
  end

  def newpost
  end

  def createpost
    @current_user = User.find(session[:user_id])
    current_user.posts.create(post_params)
    #@post.user = current_user
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :link, :description)
  end


end
