class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update]

  def index
    @items = policy_scope(Item).where(user: current_user).where(disabled: false)
    @user = current_user
  end

  def create
    if current_user.items.nil?
      puts "Did your QR code arrive yet?"
    end
    @item = Item.new(item_params)
    @item.user = current_user
    authorize @item
    @item.qr_number = current_user.items.count + 1
    if code_id == current_user.codes.last.id + 1
      redirect_to items_path
    else

      @item.code_id = code_id

      if @item.save
        redirect_to items_path
      else
        render :new
      end
    end
  end

  def new
    @item = Item.new
    @item.user = current_user
    authorize @item
  end

  def show
    set_item
    @finding = Finding.where(item: @item).find_by(home: false)
    authorize @finding
    authorize @item
  end

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

  private

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :category)
  end

  def code_id
    if current_user.items.first.nil?
      current_user.codes.first.id
    else
      current_user.items.last.code_id + 1
    end
  end

end
