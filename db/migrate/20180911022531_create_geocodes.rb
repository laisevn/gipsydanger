class CreateGeocodes < ActiveRecord::Migration[5.2]
  def change
    create_table :geocodes do |t|
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
