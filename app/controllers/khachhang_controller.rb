class KhachhangController < ApplicationController
  def index
    @khachhangs = Khachhang.all
    @categories = Category.all
  end
  
  def show
    @khachhang = Khachhang.find(params[:id])
    @categories = Category.all
  end
end
