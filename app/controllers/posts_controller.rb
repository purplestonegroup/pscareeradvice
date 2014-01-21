class PostsController < ApplicationController

  def show
    # for the partial list of categories
    @categories = Category.all.order("rank asc, name asc")
    # to find the right category and then find the correspondent post...
    @category = Category.find(params[:category_id])
    
    @post = @category.posts.find(params[:id])
  end

  def search
    # for the partial list of categories
    @categories = Category.all.order("rank asc, name asc")

    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.order("created_at DESC")
    end

  end


end
