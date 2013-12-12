class PostsController < ApplicationController
  def index
  	@posts = Post.all.order("created_at desc")
  end

  def show
  	@post = Post.find(params[:id])
  end

  def home
  	if params[:set_locale]
  		redirect_to root_url(locale: params[:set_locale])
  	else
  		@posts = Post.all.order("created_at desc")
  	end
  end

end
