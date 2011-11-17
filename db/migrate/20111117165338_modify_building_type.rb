class ModifyBuildingType < ActiveRecord::Migration
  def up
    remove_column :building_types, :type
    add_column :building_types, :building_type, :string
  end

  def down
  end
end
