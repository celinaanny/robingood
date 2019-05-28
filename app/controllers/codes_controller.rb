class CodesController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    set_code
    @item = Item.find_by(code: @code)
    @finding = Finding.new(item: @item)
    # authorize @finding, :create?
    skip_authorization
  end

  private

  def set_code
    @code = Code.find(params[:id])
  end
end
