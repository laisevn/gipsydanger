class RenameUsbToUbs < ActiveRecord::Migration[5.2]
  def change
  	rename_table :usbs, :ubs
  end
end
