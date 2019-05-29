class AddQrNumberToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :qr_number, :integer
  end
end
