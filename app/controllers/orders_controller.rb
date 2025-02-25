class OrdersController < ApplicationController
  def index
  @orders = Order.all
  render :index
  end
  def create
  @order = Order.create(
    user_id: params[:user_id],

    quantity: params[:quantity],
    subtotal: params[:subtotal],
    tax: params[:tax],
    total: params[:total],
    date_ordered: params[:date_ordered]
  )
  render :show
  end
end
