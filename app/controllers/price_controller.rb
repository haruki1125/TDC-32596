class PriceController < ApplicationController
  def index
    @shops = Shop.where(price_id: params[:price_id])
  end

  def destroy
    @note = Shop.find(params[:id])
    @note.destroy
    redirect_to root_path
  end
end
