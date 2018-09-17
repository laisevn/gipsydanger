class AddLatitudeToEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :latitude, :decimal, precision: 15, scale: 10
    add_column :entries, :longitude, :decimal, precision: 15, scale: 10

    add_index :entries, [:latitude, :longitude]
  end
end
