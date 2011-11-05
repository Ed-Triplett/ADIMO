class FortressMetadatum < ActiveRecord::Base
  belongs_to :building_type
  validates :relationship_to_settlement, :presence => true
  validates :plan_type, :presence => true
  validates :monastic_buildings :presence => true
end
