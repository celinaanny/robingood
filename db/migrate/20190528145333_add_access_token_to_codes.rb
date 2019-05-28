class AddAccessTokenToCodes < ActiveRecord::Migration[5.2]
  def change
    add_column :codes, :access_token, :string
    add_index :codes, :access_token, unique: true
  end
end
