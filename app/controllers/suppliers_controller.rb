class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
    render :index
  end
  def create
    @supplier = Supplier.create(
    name: params[:name],
    email: params[:email],
    phone_number: params[:phone_number]
    )
    render :show
  end
  def show
    @supplier = Supplier.find_by(id: params[:id])
    render :show
  end
  def update
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.update(
      name: params[:name] || @supplier.name,
      email: params[:email] || @psupplier.email,
      phone_number: params[:phone_number] || @supplier.phone_number
      )
      render :show
  end
  def destroy
    @supplier = Supplier.find_by(id: params[:id])
    @supplier.delete
    render json: "*strong bad impression* DELETED"
  end
end
