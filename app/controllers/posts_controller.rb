class PostsController < ApplicationController

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.create(title: params[:title])
  end


end
