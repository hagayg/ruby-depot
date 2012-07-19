class StoreController < ApplicationController

  def index
    @products = Product.order(:title)
    if session[:counter].nil?
      session[:counter] = 1
    else
      session[:counter] += 1
    end
    @counter = session[:counter]
  end

  def on_add_to_cart
    session[:counter] = 0
    redirect_to current_cart
    #redirect_to line_items_path(params[:product_id])
  end
end
