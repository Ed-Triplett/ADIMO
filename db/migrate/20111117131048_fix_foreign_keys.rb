class FixForeignKeys < ActiveRecord::Migration
  def up
    remove_column :buildings, :sites_id, :integer
    remove_column :events, :buildings_id, :integer
    remove_column :patrons, :events_id, :integer
    remove_column :military_orders, :events_id, :integer
    remove_column :building_types, :events_id, :integer
    remove_column :monastic_metadata, :events_id, :integer
    remove_column :fortress_metadata, :events_id, :integer
    remove_column :church_metadata, :events_id, :integer
    remove_column :site_principalities, :sites_id, :integer
    remove_column :building_topographies, :buildings_id, :integer
    remove_column :event_types, :events_id, :integer
    remove_column :patron_names, :patrons_id, :integer
    remove_column :patron_types, :patrons_id, :integer
    remove_column :patron_kingdoms, :patrons_id, :integer
    remove_column :patron_dates, :patrons_id, :integer
    remove_column :order_names, :orders_id, :integer
    remove_column :fortmeta_settlements, :fortress_metadatum_id, :integer
    remove_column :fortmeta_plantypes, :fortress_metadatum_id, :integer
    remove_column :fortmeta_monast_blgs, :fortress_metadatum_id, :integer
    remove_column :churchmeta_types, :church_metadatum_id, :integer
    remove_column :monastmeta_bldgs, :monastic_metadatum, :integer
    remove_column :milorders_names, :military_order, :integer
    
    add_column :buildings, :site_id, :integer
    add_column :events, :building_id, :integer
    add_column :patrons, :event_id, :integer
    add_column :military_orders, :event_id, :integer
    add_column :building_types, :event_id, :integer
    add_column :monastic_metadata, :event_id, :integer
    add_column :fortress_metadata, :event_id, :integer
    add_column :church_metadata, :event_id, :integer
    add_column :site_principalities, :site_id, :integer
    add_column :building_topographies, :building_id, :integer
    add_column :event_types, :event_id, :integer
    add_column :patron_names, :patron_id, :integer
    add_column :patron_types, :patron_id, :integer
    add_column :patron_kingdoms, :patron_id, :integer
    add_column :patron_dates, :patron_id, :integer
    add_column :order_names, :order_id, :integer
    add_column :fortmeta_settlements, :fortress_metadata_id, :integer
    add_column :fortmeta_plantypes, :fortress_metadata_id, :integer
    add_column :fortmeta_monast_blgs, :fortress_metadata_id, :integer
    add_column :churchmeta_types, :church_metadata_id, :integer
    add_column :monastmeta_bldgs, :monastic_metadata_id, :integer
    add_column :milorders_names, :military_order_id, :integer
    
  end

  def down
  end
end
