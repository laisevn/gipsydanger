class RemoveLonglatFromEntries < ActiveRecord::Migration[5.2]
  def change
    remove_column :entries, :longlat, :st_point
  end
end
