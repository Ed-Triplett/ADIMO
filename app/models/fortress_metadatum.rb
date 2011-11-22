class FortressMetadatum < ActiveRecord::Base
  set_table_name 'fortress_metadata'
  belongs_to :building_type
  belongs_to :fortmeta_monast_blg
  belongs_to :fortmeta_plantype
  belongs_to :fortmeta_settlement
  def to_label
    "#{fortmeta_monast_blg.to_label if fortmeta_monast_blg != nil}, #{fortmeta_plantype.to_label if fortmeta_plantype != nil}, #{fortmeta_settlement.to_label if fortmeta_settlement != nil}"
  end
end
