class BuildingsController < ApplicationController
  active_scaffold :building do |conf|
  conf.label = "buildings"
  conf.columns = [:name, :latitude, :longitude, :topography, :note]
  conf.columns[:name].label = "Building Name"
  conf.columns[:topography].label = "Topographical Orientation"
  list.columns.exclude :note
  list.sorting = {:name => 'ASC'}
  columns[:name].label = "Building Name"
  end
end 
