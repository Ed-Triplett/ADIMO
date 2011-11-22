class EvenMoreFks < ActiveRecord::Migration
  def up
    add_column :fortress_metadata, :fortmeta_plan_type_id, :integer
    add_column :fortress_metadata, :fortmeta_monast_bldgs_id, :integer
    # add_column :church_metadata, :churchmeta_type_id, :integer
    add_column :monastic_metadata, :monastmeta_bldgs_id, :integer
    add_column :military_orders, :milorders_name_id, :integer
    add_column :fortress_metadata, :formeta_settlement_id, :integer
    
  end

  def down
  end
end
