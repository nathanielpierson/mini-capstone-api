class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end
  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render :show
  end
end
