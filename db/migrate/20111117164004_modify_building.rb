class ModifyBuilding < ActiveRecord::Migration
  def up
    add_column :buildings, :building_topography_id, :integer
  end

  def down
  end
end
