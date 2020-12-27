class PriceController < ApplicationController
  def index
    @shops = Shop.where(price_id: params[:price_id])
  end
end
