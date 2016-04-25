class PagesController < ApplicationController
  def lienhe
  	@categories = Category.all
  end

  def video
    @categories = Category.all
  end
end
