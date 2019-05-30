class AddColumnsToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :postal_code, :string
    add_column :addresses, :city, :string
    add_column :addresses, :street, :string
    add_column :addresses, :company_name, :string
    add_column :addresses, :name, :string
  end
end
