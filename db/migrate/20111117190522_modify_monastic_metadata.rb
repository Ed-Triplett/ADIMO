class ModifyMonasticMetadata < ActiveRecord::Migration
  def up
    add_column :monastic_metadata, :building_type_id, :integer
    add_column :monastic_metadata, :monastmeta_bldg_id, :integer
  end

  def down
  end
end
