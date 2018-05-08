class ItemsController < ApplicationController
  def show
    @item = Item.find_by(id: params[:id])
    render :show
  end
end
