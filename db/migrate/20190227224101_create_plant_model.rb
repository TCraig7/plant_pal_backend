class CreatePlantModel < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :image
      t.string :name
      t.string :scientific_name
      t.string :nickname
      t.integer :amount_of_light
      t.integer :amount_of_water
      t.string :purchased_from

      t.timestamps
    end
  end
end
