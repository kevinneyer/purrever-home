class CreateAdoptionCenters < ActiveRecord::Migration[6.0]
  def change
    create_table :adoption_centers do |t|
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
