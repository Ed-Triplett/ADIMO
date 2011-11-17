class BuildingTypesController < ApplicationController
  active_scaffold :building_type do |conf|
    conf.list.columns = [:building_type, :fortress_metadatum, :church_metadatum, :monastic_metadatum]
    conf.show.columns = [:building_type, :fortress_metadatum, :church_metadatum, :monastic_metadatum]
    conf.columns = [:building_type]
  end
end 