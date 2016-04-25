class TintucController < ApplicationController
  def show
    category = Category.find(params[:category_id])
  	@tintuc = Tintuc.find(params[:id])
  	@tintucs = category.tintucs
  	@categories = Category.all
  end
end
