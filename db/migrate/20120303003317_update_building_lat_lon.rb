class UpdateBuildingLatLon < ActiveRecord::Migration
  def up
    change_column :buildings, :latitude, :decimal, :precision => 15, :scale => 10
    change_column :buildings, :longitude, :decimal, :precision => 15, :scale => 10
  end

  def down
  end
end
