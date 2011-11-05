class BuildingType < ActiveRecord::Base
  belongs_to :event
  has_one :fortress_metadatum
  has_one :monastic_metadatum
  has_one :church_metadatum
  validates :type :presence => true
  accepts_nested_attributes_for :fortress_metadatum, :allow_destroy => true
  accepts_nested_attributes_for :church_metadatum, :allow_destroy => true
  accepts_nested_attributes_for :monastic_metadatum, :allow_destroy => true
end
