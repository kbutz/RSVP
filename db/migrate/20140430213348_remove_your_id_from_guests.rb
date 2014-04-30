class RemoveYourIdFromGuests < ActiveRecord::Migration
  def change
  	remove_column :guests, :your_id
  end
end
