class FortressMetadataController < ApplicationController
  active_scaffold :fortress_metadatum do |conf|
    conf.columns = [:fortmeta_plantype, :fortmeta_monast_blg, :fortmeta_settlement]
    conf.columns[:fortmeta_plantype].form_ui = :select
    conf.columns[:fortmeta_monast_blg].form_ui = :select
    conf.columns[:fortmeta_settlement].form_ui = :select
    conf.columns[:fortmeta_plantype].label = 'Plan type'
    conf.columns[:fortmeta_monast_blg].label = 'Monastic building'
    conf.columns[:fortmeta_settlement].label = 'Relationship to Settlement'
  end
end 