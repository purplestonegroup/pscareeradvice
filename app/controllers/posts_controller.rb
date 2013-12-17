class PostsController < ApplicationController
  def index
  	@posts = Post.all.order("created_at desc")
  end

  def show
  	@post = Post.find(params[:id])
  end

  def home
  	@posts = Post.all.order("created_at desc")
  end

end
