class AddYourIdToGuests < ActiveRecord::Migration
  def change
  	add_column :guests, :your_id, :integer
  	add_index :guests, :your_id
  end
end
