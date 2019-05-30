class AddressesController < ApplicationController
  def new
  end

  def create
    @address = Address.new(address_params)
    @address.user = current_user
    authorize @address
    @codes = Code.where(user: current_user)
    if @address.save
      redirect_to sent_confirmation_path
    else
      render "codes/sendcodes"
    end
  end

  def sent_confirmation
    skip_authorization
  end

  private

  def address_params
    params.require(:address).permit(:name, :company_name, :street, :postal_code, :city, :country)
  end
end
