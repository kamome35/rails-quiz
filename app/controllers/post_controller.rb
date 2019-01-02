class PostController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def new
    #@post = Post.new
  end
  def create
    @post = Post.new(content: params[:content])
    @post.save
    redirect_to("/")
  end
end
