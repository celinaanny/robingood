class RemoveCurrencyFromFindings < ActiveRecord::Migration[5.2]
  def change
    remove_column :findings, :amount_cents_currency, :string
  end
end
