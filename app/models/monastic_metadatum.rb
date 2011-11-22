class MonasticMetadatum < ActiveRecord::Base
  set_table_name 'monastic_metadata'
  # belongs_to :building_type
  belongs_to :monastmeta_bldg
  # validates :buildings, :presence => true
  def to_label
    "#{monastmeta_bld.to_label if monastmeta_bldg != nil}"
  end
end
