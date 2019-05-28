class CodesController < ApplicationController
skip_before_action :authenticate_user!, only: [:show]

  def index
    @codes = policy_scope(Code)
  end
    
  def show
    set_code
    @item = Item.find_by(code: @code)
    @finding = Finding.new(item: @item)
    # authorize @finding, :create?
    skip_authorization
  end

  private

  def set_code
    @code = Code.find(params[:access_token])
  end
end
