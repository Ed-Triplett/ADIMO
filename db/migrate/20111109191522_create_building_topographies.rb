class CreateBuildingTopographies < ActiveRecord::Migration
  def change
    create_table :building_topographies do |t|
      t.string :building_topography

      t.timestamps
    end
  end
end
