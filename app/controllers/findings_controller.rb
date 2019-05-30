class FindingsController < ApplicationController
  def show
    @finding = Finding.find(params[:id])
    authorize @finding
    @item = @finding.item
  end

  def update
    @finding = Finding.find(params[:id])
    authorize @finding
    @finding.amount_cents_cents = finding_params[:amount_cents_cents]
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
      redirect_to thankyou_path
    else
      render code_path(@code)
    end
  end

  private

  def finding_params
    params.require(:finding).permit(:address, :message, :cause_id, :amount_cents_cents)
  end
end
