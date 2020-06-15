class CreateCats < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.string :breed
      t.integer :age 
      t.string :image_url
      t.string :favorite_food
      
      t.timestamps
    end
  end
end
