class AddLatLonDecimal < ActiveRecord::Migration
  def up

      change_column :buildings, :latitude, :decimal, {:precision => 8 }
      change_column :buildings, :longitude, :decimal, {:precision => 8 }


#    change_table :buildings do |t|
#      change_column :latitude, :decimal, {:precision => 8 }
#      change_column :longitude, :decimal, {:precision => 8 }

#      t.column :latitude, :decimal, {:precision => 8}
 #     t.column :longitude, :decimal, {:precision => 8}
    # end
  end
end
