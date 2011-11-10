class Building < ActiveRecord::Base
  belongs_to :site
  has_many :event
  has_one :building_topography
end
