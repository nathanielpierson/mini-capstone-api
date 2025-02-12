class ProductsController < ApplicationController
  def index
    @products = Product.all
    render :index
  end
  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id]
      )
      if @product.save
      render :show
      else
        render json: { message: "oops" }
      end
  end
  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render :show
  end
  def update
    @product = Product.find_by(id: params[:id])
    @product.update(
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      description: params[:description] || @product.description,
      supplier_id: params[:supplier_id] || @product.supplier_id
      )
      render :show
  end
  def destroy
  end
end
