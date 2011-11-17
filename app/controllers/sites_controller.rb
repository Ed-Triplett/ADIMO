class SitesController < ApplicationController
  layout 'application'
  active_scaffold :site do |conf|
    conf.label = "Sites"
    conf.list.columns = [:name, :site_principality, :buildings, :military_orders, :patrons, :events]
    # conf.columns << :mimilitary_orders
    # conf.columns << :patrons
    # conf.columns << :events
    # conf.columns = [:name, :principality, :buildings, :military_order, :patrons, :notes]
    conf.create.columns = [:name, :site_principality, :notes]
    conf.update.columns = [:name, :site_principality, :notes]
    conf.show.columns = [:name, :site_principality, :buildings, :military_orders, :patrons, :events, :notes]
    conf.columns[:name].label = "Name"
    conf.columns[:site_principality].label = "Principality"
    conf.columns[:site_principality].form_ui = :select
    list.columns.exclude :notes
    list.sorting = {:name => "ASC"}
  end

end
