class UpdateBuildingLatLonFormat < ActiveRecord::Migration
  def up
    change_column :buildings, :latitude, :decimal, {:precision => 8 }
    change_column :buildings, :longitude, :decimal, {:precision => 8 }
  end

  def down
  end
end
