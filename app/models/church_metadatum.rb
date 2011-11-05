class ChurchMetadatum < ActiveRecord::Base
  belongs_to :building_type
  validates :type, :presence => true
  validates :plan, :presence => true
end
