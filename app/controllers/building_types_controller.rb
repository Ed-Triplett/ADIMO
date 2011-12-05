class BuildingTypesController < ApplicationController
  active_scaffold :building_type do |conf|
    conf.columns = [:architecture_type, :fortress_metadatum]#, :church_metadatum, :monastic_metadatum]
    conf.show.columns = [:architecture_type]#, :fortress_metadatum, :church_metadatum, :monastic_metadatum]
    conf.columns[:architecture_type].form_ui = :select
    conf.columns[:architecture_type].actions_for_association_links = [:show]
    # conf.columns = [:building_type]
  end
end 
