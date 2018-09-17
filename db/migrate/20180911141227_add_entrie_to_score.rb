class AddEntrieToScore < ActiveRecord::Migration[5.2]
  def change
    add_reference :scores, :entrie, foreign_key: true
  end
end
