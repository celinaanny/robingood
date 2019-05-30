class AddCoordinatesToFindings < ActiveRecord::Migration[5.2]
  def change
    add_column :findings, :latitude, :float
    add_column :findings, :longitude, :float
  end
end
