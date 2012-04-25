class AddNewLatLongFields < ActiveRecord::Migration
  def up
    remove_column :buildings, :latitude
    remove_column :buildings, :longitude
    
    add_column :buildings, :latitude, :float
    add_column :buildings, :longitude, :float
    
  end

  def down
  end
end
