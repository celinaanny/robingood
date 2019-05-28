class RemoveStatusFromFindings < ActiveRecord::Migration[5.2]
  def change
    remove_column :findings, :status, :string
  end
end
