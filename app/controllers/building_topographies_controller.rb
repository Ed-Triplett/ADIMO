class BuildingTopographiesController < ApplicationController
  active_scaffold :building_topography do |conf|
    conf.columns = [:building_type, :fortress_metadatum, :church_metadatum, :monastic_metadatum]
  end
end 