class AddEntrieToGeocode < ActiveRecord::Migration[5.2]
  def change
    add_reference :geocodes, :entrie, foreign_key: true
  end
end
