class RemoveDateFromFindings < ActiveRecord::Migration[5.2]
  def change
    remove_column :findings, :date, :date
  end
end
