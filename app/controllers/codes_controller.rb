class CodesController < ApplicationController
skip_before_action :authenticate_user!, only: [:show]

  def index
    @codes = policy_scope(Code)
  end

  def sendcodes
    @user = current_user
    @codes = Code.where(user: @user).first(3)
    skip_authorization
    @order = Order.new
    @address = Address.new
  end

  def show
    @hidden_navbar = true
    set_code
    @item = Item.find_by(code: @code)
    @finding = Finding.new(item: @item)
    # authorize @finding, :create?
    skip_authorization
  end

  private

  def set_code
    @code = Code.find_by(access_token: params[:access_token])
  end
end
