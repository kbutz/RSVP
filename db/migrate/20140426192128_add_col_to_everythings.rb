class AddColToEverythings < ActiveRecord::Migration
  def change
    add_column :everythings, :your_friends, :text
  end
end
