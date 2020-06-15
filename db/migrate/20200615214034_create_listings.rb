class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :content
      t.datetime :date_added
      t.integer :cat_id
      t.integer :adoption_center_id

      t.timestamps
    end
  end
end
