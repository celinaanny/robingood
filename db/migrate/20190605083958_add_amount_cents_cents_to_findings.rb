class AddAmountCentsCentsToFindings < ActiveRecord::Migration[5.2]
  def change
    add_column :findings, :amount_cents_cents, :integer, default: 5
  end
end
