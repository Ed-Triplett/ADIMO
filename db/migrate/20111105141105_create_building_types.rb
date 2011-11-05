class CreateBuildingTypes < ActiveRecord::Migration
  def change
    create_table :building_types do |t|
      t.string :type
      t.text :note

      t.timestamps
    end
  end
end
