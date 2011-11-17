class BuildingType < ActiveRecord::Base
  # belongs_to :event
  has_one :fortress_metadatum
  has_one :monastic_metadatum
  has_one :church_metadatum
  def to_label
    "#{building_type}"
  end
end
