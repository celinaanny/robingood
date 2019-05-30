class AddPaymentToFinding < ActiveRecord::Migration[5.2]
  def change
    add_column :findings, :payment, :jsonb
  end
end
