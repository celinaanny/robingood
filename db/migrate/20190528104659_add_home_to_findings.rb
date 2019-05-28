class AddHomeToFindings < ActiveRecord::Migration[5.2]
  def change
    add_column :findings, :home, :boolean, default: false
  end
end
