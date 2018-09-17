class AddLonglatToEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :longlat, :st_point, geographic: true
  end
end
