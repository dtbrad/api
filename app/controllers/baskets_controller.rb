class BasketsController < ApplicationController
  def index
    @baskets = Basket.all
    render json: @baskets
  end

  def show
    @basket = Basket.find(params[:id])
    render json: @basket
  end

end
