class AddLatLonToBuildings < ActiveRecord::Migration
  def up
    add_column :buildings, :lat, :decimal, :precision => 15, :scale => 10
    add_column :buildings, :lng, :decimal, :precision => 15, :scale => 10

    execute <<-SQL
      UPDATE buildings 
      SET lat = latitude,
          lng = longitude
    SQL

    #remove_column :buildings, :latitude
    #remove_column :buildings, :longitude

    #rename_column :buildings, :lat, :latitude
    #rename_column :buildings, :lng, :longitude
  end

  def down
    remove_column :buildings, :lat
    remove_column :buildings, :lng
  end
end
