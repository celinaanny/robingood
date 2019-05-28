class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :code, foreign_key: true
      t.string :name
      t.references :user, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
