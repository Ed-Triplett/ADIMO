class FixFk < ActiveRecord::Migration
  def up
    add_column :fortress_metadata, :fortmeta_monast_blg_id, :integer
    
  end

  def down
  end
end
