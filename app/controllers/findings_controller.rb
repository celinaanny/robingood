class FindingsController < ApplicationController
  def show
    @finding = Finding.find(params[:id])
    @item = @finding.item
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
    params.require(:finding).permit(:address, :message, :cause_id)
  end
end
