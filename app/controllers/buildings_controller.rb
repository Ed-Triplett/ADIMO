class BuildingsController < ApplicationController
  active_scaffold :building do |conf|
  config.label = "buildings"
  config.columns = [:name, :latitude, :longitude, :topography, :note]
  list.columns.exclude :note
  list.sorting = {:name => 'ASC'}
  columns[:name].label = "Building Name"
  end
end 
