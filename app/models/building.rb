class Building < ActiveRecord::Base
  belongs_to :site
  has_many :events
  has_one :building_topography
end
