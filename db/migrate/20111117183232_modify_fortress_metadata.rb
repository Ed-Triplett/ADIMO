class ModifyFortressMetadata < ActiveRecord::Migration
  def up
    add_column :fortress_metadata, :fortmeta_settlement_id, :integer
    add_column :fortress_metadata, :fortmeta_plantype_id, :integer
    add_column :fortress_metadata, :fortmeta_monast_bldg_id, :integer
  end

  def down
  end
end
