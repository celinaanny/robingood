class FindingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:create]

  def show
    @finding = Finding.find(params[:id])
    authorize @finding
    @item = @finding.item
    @markers = { lat: @finding.latitude, lng: @finding.longitude, infoWindow: render_to_string(partial: "infowindow", locals: { finding: @finding })
  }
  end

  def update
    @finding = Finding.find(params[:id])
    authorize @finding
    @finding.amount_cents_cents = finding_params[:amount_cents_cents].to_i * 100
    if @finding.save
      redirect_to new_finding_payment_path(@finding)
    else
      render finding_path(@finding)
    end
  end

  def create
    @item = Item.find(params[:item_id])
    @finding = Finding.new(finding_params)
    @finding.item = @item
    @code = @item.code
    authorize @finding
    if @finding.save
      flash[:notice] = "You sucessfully submitted the location for #{@item.name}."
      UserMailer.with(user: @item.user).found.deliver_now
      redirect_to thankyou_path
    else
      render code_path(@code)
    end
  end

  private

  def finding_params
    params.require(:finding).permit(:address, :latitude, :longitude, :message, :cause_id, :amount_cents_cents)
  end
end
