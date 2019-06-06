class OrdersController < ApplicationController
  def create
    # @order = Order.new(order_params)
    # @order.billing_address = @order.shipping_address
    # @order.user = current_user
    # @user = current_user
    # @codes = Code.where(user: @user).first(3)
    # raise
    # @codes.each { |code| code.order_id = @order.id }
    # authorize @order
    # if @order.save
    #   redirect_to items_path
    # else
    #   @address = Address.new
    #   render "codes/sendcodes"
    # end
  end

  def update
    @codes = Code.where(user: @user).first(3)
    @order = Order.find(params[:id])
    authorize @order
    if @order.update!(order_params)
      if @order.update!(status: "processed")
        redirect_to items_path
      else
        render "codes/sendcodes"
      end
    else
      render "codes/sendcodes"
    end
  end

  private
  def order_params
    params.require(:order).permit(:shipping_address_id, :billing_address_id, :status, :order_type_id)
  end
end
