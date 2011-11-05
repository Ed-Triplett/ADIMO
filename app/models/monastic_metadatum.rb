class MonasticMetadatum < ActiveRecord::Base
belongs_to :building_type
validates :buildings, :presence => true
end
