class ChurchMetadatum < ActiveRecord::Base
  belongs_to :building_type
  has_one :churchmeta_type
end
