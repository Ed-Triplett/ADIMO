class AddArchTypeFk < ActiveRecord::Migration
  def up
    add_column :building_types, :architecture_type_id, :integer
  end

  def down
  end
end
