class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
  @product = Product.new
end

  def body
    product = Product.find(params[:id])
    render plain: product.description
  end
end
