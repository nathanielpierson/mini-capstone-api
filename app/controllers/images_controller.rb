class ImagesController < ApplicationController
  def index
    @images = Image.all
    render :index
  end
  def update
    @image = Image.find_by(id: params[:id])
    @image.update(
    title: params[:title] || @image.title,
    url: params[:url] || @image.url,
    product_id: params[:product_id] || @image.product_id
    )
    render :show
  end
end
