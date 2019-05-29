class DisabledItemsController < ApplicationController
  def update
    @item = Item.find(params[:id])
    @item.update(disabled: true)
    authorize @item
    redirect_to items_path
  end
end
