class CategoryController < ApplicationController
  def index
    @shops = Shop.where(category_id: params[:category_id])
  end

  def destroy
    @note = Shop.find(params[:id])
    @note.destroy
    redirect_to root_path
  end
end
