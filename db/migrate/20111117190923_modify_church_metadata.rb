class ModifyChurchMetadata < ActiveRecord::Migration
  def up
    add_column :church_metadata, :building_type_id, :integer
    add_column :church_metadata, :churchmeta_type_id, :integer
  end

  def down
  end
end
