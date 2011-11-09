class SitesController < ApplicationController
  layout :application
  active_scaffold :site do |conf|
    conf.label = "Sites"
    conf.columns = [:name, :principality, :notes]
    conf.columns[:name].label = "Name"
    conf.columns[:principality].label = "Principality"
    config.nested.add_link "Add Building" [:building]
    list.columns.exclude :notes
    list.sorting = {:name => "ASC"}
  end

end

