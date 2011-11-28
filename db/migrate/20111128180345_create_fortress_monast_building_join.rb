class CreateFortressMonastBuildingJoin < ActiveRecord::Migration
  def up
    create_table :fortress_metadata_fortmeta_monast_blgs, :id => false do |t|
      t.references :fortress_metadatum, :fortmeta_monast_blg
    end
  end

  def down
    drop_table :fortress_metadata_fortmeta_monast_blgs
  end
end
