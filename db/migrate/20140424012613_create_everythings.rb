class CreateEverythings < ActiveRecord::Migration
  def change
    create_table :everythings do |t|
      t.string :name
      t.boolean :friday
      t.text :friday_lodging
      t.boolean :ceremony
      t.boolean :reception
      t.text :saturday_lodging

      t.timestamps
    end
  end
end
