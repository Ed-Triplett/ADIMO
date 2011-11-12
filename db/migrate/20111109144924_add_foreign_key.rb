class AddForeignKey < ActiveRecord::Migration
  def up
    add_column :buildings, :sites_id, :integer
    add_column :events, :buildings_id, :integer
    add_column :patrons, :events_id, :integer
    add_column :military_orders, :events_id, :integer
    add_column :building_types, :events_id, :integer
    add_column :monastic_metadatum, :events_id, :integer
    add_column :fortress_metadatum, :events_id, :integer
    add_column :church_metadatum, :events_id, :integer
    add_column :site_principalities, :sites_id, :integer
    add_column :building_topographies, :buildings_id, :integer
    add_column :event_types, :events_id, :integer
    add_column :patron_names, :patrons_id, :integer
    add_column :patron_types, :patrons_id, :integer
    add_column :patron_kingdom, :patrons_id, :integer
    add_column :patron_dates, :patrons_id, :integer
    add_column :order_names, :orders_id, :integer
    add_column :fortmeta_settlements, :fortress_metadatum_id, :integer
    add_column :fortmeta_plantypes, :fortress_metadatum_id, :integer
    add_column :fortmeta_monast_blgs :fortress_metadatum_id, :integer
    add_column :churchmeta_types, :church_metadatum_id, :integer
    add_column :monastmeta_bldgs, :monastic_metadatum, :integer
    add_column :milorders_names, :military_order, :integer
  end
end

