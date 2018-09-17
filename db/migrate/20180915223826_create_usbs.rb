class CreateUsbs < ActiveRecord::Migration[5.2]
  def change
    create_table :usbs do |t|
      t.integer :current_page
      t.integer :per_page
      t.integer :total_entries

      t.timestamps
    end
  end
end
