class SitesController < ApplicationController

    active_scaffold :site do |conf|
      conf.label = "Sites"
      conf.columns = [:name, :principality, :notes]
      list.columns.exclude :notes
      list.sorting = {:name => "ASC"}
    end

end

