class BuildingType < ActiveRecord::Base
  has_one :event
  belongs_to :architecture_type
  has_one :fortress_metadatum
  has_one :monastic_metadatum
  has_one :church_metadatum
  def to_label
    "#{architecture_type.to_label if architecture_type != nil}"
  end
end
