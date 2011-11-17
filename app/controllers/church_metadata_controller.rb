class ChurchMetadataController < ApplicationController
  active_scaffold :church_metadatum do |conf|
    conf.columns = [:churchmeta_type, :note]
    conf.columns[:churchmeta_type].form_ui = :select
    conf.columns[:churchmeta_type].actions_for_association_links = [:show]
    
  end
end 