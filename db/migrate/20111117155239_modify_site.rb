class ModifySite < ActiveRecord::Migration
  def up
    add_column :sites, :site_principality_id, :integer
  end

  def down
  end
end
