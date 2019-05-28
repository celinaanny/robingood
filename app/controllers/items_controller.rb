class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :destroy, :edit, :update]

  def index
    @items = policy_scope(Item).where(user: current_user)
  end

  def create
    @item = Item.new(item_params)
    authorize @item
  end

  def new
    @item = Item.new
    authorize @item
  end

  def show; end

  def edit; end

  def update
    if @item.update
      redirect_to items_path
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    authorize @item
    redirect_to items_path
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description)
  end
end
