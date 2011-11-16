class FortressMetadatum < ActiveRecord::Base
  belongs_to :building_type
  has_one :fortmeta_monast_blg
  has_one :fortmeta_plantype
  has_one :fortmeta_settlement
end
