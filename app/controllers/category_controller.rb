class CategoryController < ApplicationController
  def index
    @shops = Shop.where(category_id: params[:category_id])
  end
end
