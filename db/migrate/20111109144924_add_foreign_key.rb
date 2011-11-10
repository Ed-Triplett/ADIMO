class AddForeignKey < ActiveRecord::Migration
  def up
    add_column :sites, :sites_id, :integer
    add_column :buildings, :building_id, :integer
    add_column :events, :event_id, :integer
    add_column :patrons, :patron_id, :integer
    add_column :military_orders, :order_id, :integer
    add_column :building_types, :buildingtype_id, :integer
    add_column :monastic_metadatum, :moansticmeta_id, :integer
    add_column :fortress_metadatum, :fortressmeta_id, :integer
    add_column :church_metadatum, :churchmeta_id, :integer
  end
end

