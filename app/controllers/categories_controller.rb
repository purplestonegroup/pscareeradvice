class CategoriesController < ApplicationController

  before_action :get_categories

  def index
        
    @posts = Post.order('created_at desc').limit(10)

  end

  def show
    
  	@category = Category.find(params[:id])

  end

  def home
  	if params[:set_locale]
  		redirect_to root_url(locale: params[:set_locale])
  	else
      
      @posts = Post.order('created_at desc').limit(2)

  	end
  end


  def get_categories
    # for the partial list of categories
    @categories = Category.all.order("rank asc, name asc")    
  end

end
