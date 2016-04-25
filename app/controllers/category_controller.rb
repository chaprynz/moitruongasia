class CategoryController < ApplicationController
  def index
    @categories = Category.all
    @posts = Post.all
    @tintucs = Tintuc.all
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
  	@posts = @category.posts
  end
  
  def tatca
    @categories = Category.all
    @posts = Post.all
  end
  
  def tintuc
    @categories = Category.all
    @tintucs = Tintuc.all
  end
  
  

end
