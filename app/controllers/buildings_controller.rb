class BuildingsController < ApplicationController
  layout 'application'
  active_scaffold :building do |conf|
  conf.label = "buildings"
  conf.list.columns = [:name, :building_topography, :events]
  conf.create.columns = [:name, :latitude, :longitude, :building_topography, :note]
  conf.update.columns = [:name, :latitude, :longitude, :building_topography, :note]
  conf.show.columns = [:name, :latitude, :longitude, :building_topography, :events, :note]
  conf.columns[:name].label = "Building Name"
  conf.columns[:building_topography].label = "Topographical Orientation"
  conf.columns[:building_topography].form_ui = :select
  conf.columns[:building_topography].actions_for_association_links = [:show]
  conf.columns[:latitude].options[:format] = "%6.8f"
  conf.columns[:longitude].options[:format] = "%6.8f"
  
  conf.list.columns.exclude :note
  conf.list.sorting = {:name => 'ASC'}
  columns[:name].label = "Building Name"
  end
end 
