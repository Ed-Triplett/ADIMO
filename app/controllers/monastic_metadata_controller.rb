class MonasticMetadataController < ApplicationController
  active_scaffold do |conf|
    conf.columns = [:monastmeta_bldg, :note]
    conf.columns[:monastmeta_bldg].form_ui = :select
    conf.columns[:monastmeta_bldg].actions_for_association_links = [:show]
  end
end 