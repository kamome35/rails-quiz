class PostController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def new
    @post = Post.new
  end
  def create
    @post = Post.new(params.require(:post).permit(
      :content,
      :answer1,
      :answer2,
      :answer3,
      :answer4
    ))
    @post.save
    redirect_to("/")
  end
end
