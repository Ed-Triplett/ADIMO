class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :topography
      t.text :note

      t.timestamps
    end
  end
end
