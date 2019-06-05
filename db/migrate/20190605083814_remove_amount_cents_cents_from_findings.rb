class RemoveAmountCentsCentsFromFindings < ActiveRecord::Migration[5.2]
  def change
    remove_column :findings, :amount_cents_cents, :integer
  end
end
