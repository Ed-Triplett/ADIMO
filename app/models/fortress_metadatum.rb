class FortressMetadatum < ActiveRecord::Base
  set_table_name 'fortress_metadata'
  belongs_to :building_type
  has_and_belongs_to_many :fortmeta_monast_blgs, :join_table => 'fortress_metadata_fortmeta_monast_blgs'
  belongs_to :fortmeta_plantype
  belongs_to :fortmeta_settlement
  def to_label
    blds = ''
    fortmeta_monast_blgs.each do |b|
      blds += ', ' if blds != ''
      blds += b.to_label
    end
    "#{blds}, #{fortmeta_plantype.to_label if fortmeta_plantype != nil}, #{fortmeta_settlement.to_label if fortmeta_settlement != nil}"
  end
end
