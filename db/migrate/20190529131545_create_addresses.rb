class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :address
      t.boolean :active_billing
      t.boolean :active_shipping

      t.timestamps
    end
  end
end
