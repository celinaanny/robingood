class AddCountryToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :country, :string
    remove_column :addresses, :address, :string
  end
end
