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
      :ok1,
      :answer2,
      :ok2,
      :answer3,
      :ok3,
      :answer4,
      :ok4
    ))
    @post.save
    redirect_to("/")
  end
  def check
  end
end
