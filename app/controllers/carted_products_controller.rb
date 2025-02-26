class CartedProductsController < ApplicationController
  def index
  @carted_products = Carted_product.all
  render :index
  end
end
