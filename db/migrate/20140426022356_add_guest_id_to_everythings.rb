class AddGuestIdToEverythings < ActiveRecord::Migration
  def change
  	add_column :everythings, :guest_id, :integer
  	add_index :everythings, :guest_id
  	remove_column :everythings, :name
  end
end
