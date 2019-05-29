class AddDisabledToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :disabled, :boolean, default: false
  end
end
