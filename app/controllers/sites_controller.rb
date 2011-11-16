class SitesController < ApplicationController
  layout 'application'
  active_scaffold :site do |conf|
    conf.label = "Sites"
    conf.list.columns = [:name, :principality, :buildings, :military_order, :patrons, :events]
    conf.columns = [:name, :principality, :buildings, :military_order, :patrons, :notes]
    conf.columns[:name].label = "Name"
    conf.columns[:principality].label = "Principality"
    list.columns.exclude :notes
    list.sorting = {:name => "ASC"}
  end

end
