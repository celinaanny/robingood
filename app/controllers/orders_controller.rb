class OrdersController < ApplicationController
  def create
    @order = Order.new(order_params)
    @order.billing_address = @order.shipping_address
    @order.user = current_user
    @user = current_user
    @codes = Code.where(user: @user)
    authorize @order
    if @order.save
      redirect_to items_path
    else
      @address = Address.new
      render "codes/sendcodes"
    end
  end

  private
  def order_params
    params.require(:order).permit(:shipping_address_id, :billing_address_id)
  end
end
