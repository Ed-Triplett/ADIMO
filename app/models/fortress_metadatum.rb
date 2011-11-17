class FortressMetadatum < ActiveRecord::Base
  set_table_name 'fortress_metadata'
  belongs_to :building_type
  belongs_to :fortmeta_monast_blg
  belongs_to :fortmeta_plantype
  belongs_to :fortmeta_settlement
end
