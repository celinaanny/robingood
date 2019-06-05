class RemoveDateFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :date
  end
end
