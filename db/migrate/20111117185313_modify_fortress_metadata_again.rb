class ModifyFortressMetadataAgain < ActiveRecord::Migration
  def up
    add_column :fortress_metadata, :building_type_id, :integer
  end

  def down
  end
end
