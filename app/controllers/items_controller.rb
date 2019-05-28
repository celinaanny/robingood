class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :destroy, :edit, :update]

  def index
    @items = policy_scope(Item).where(user: current_user)
    @user = current_user
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @item.code = current_user.codes.find_by(code: nil)
    authorize @item
    if @item.save
      redirect_to items_path
    else
      render :new
    end
    counter += 1
  end

  def new
    @item = Item.new
    @item.user = current_user
    authorize @item
  end

  def show; end

  def edit
    authorize @item
  end

  def update
    authorize @item
    if @item.update(item_params)
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
