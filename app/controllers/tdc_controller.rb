class TdcController < ApplicationController
  def index
    @shops = Shop.all
  end
  def new
    @shop = Shop.new
  end
  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
  end

  private

  def shop_params
    params.require(:shop).permit(:shop_name, :info, :price_id, :category_id, :image).merge(user_id: current_user.id)
  end
end
