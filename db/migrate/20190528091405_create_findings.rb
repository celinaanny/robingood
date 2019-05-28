class CreateFindings < ActiveRecord::Migration[5.2]
  def change
    create_table :findings do |t|
      t.string :address
      t.string :message
      t.references :cause, foreign_key: true
      t.references :item, foreign_key: true
      t.monetize :amount_cents
      t.string :status
      t.date :date

      t.timestamps
    end
  end
end
