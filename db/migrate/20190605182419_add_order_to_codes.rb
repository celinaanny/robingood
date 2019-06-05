class AddOrderToCodes < ActiveRecord::Migration[5.2]
  def change
    add_reference :codes, :order, foreign_key: true
  end
end
