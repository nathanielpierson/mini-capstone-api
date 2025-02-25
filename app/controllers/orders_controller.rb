class OrdersController < ApplicationController
  def index
  @orders = Order.all
  render :index
  end
  def show
  @order = Order.find_by(id: params[:id])
  render :show
  end
  def create
  @order = Order.create(
    user_id: params[:user_id],
    status: params[:status],
    quantity: params[:quantity],
    subtotal: params[:subtotal],
    tax: params[:tax],
    total: params[:total],
    date_ordered: params[:date_ordered]
  )
  render :show
  end
  def update
    @order = Order.find_by(id: params[:id])
    @order.update(
      user_id: params[:user_id],
      status: params[:status],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
      date_ordered: params[:date_ordered]
    )
    render :show
  end
  def delete
  order = Order.find_by(id: params[:id])
  order.delete
  end
end
