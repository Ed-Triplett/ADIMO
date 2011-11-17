class FortressMetadataController < ApplicationController
  active_scaffold :fortress_metadatum do |conf|
    conf.columns = [:fortmeta_settlement, :fortmeta_plantype, :fortmeta_monast_blg, :note]
    conf.columns[:fortmeta_settlement].form_ui = :select
    conf.columns[:fortmeta_plantype].form_ui = :select
    conf.columns[:fortmeta_monast_blg].form_ui = :select
    conf.columns[:fortmeta_settlement].actions_for_association_links = [:show]
    conf.columns[:fortmeta_plantype].actions_for_association_links = [:show]
    conf.columns[:fortmeta_monast_blg].actions_for_association_links = [:show]
  end
end 