class Building < ActiveRecord::Base
  belongs_to :site
  has_many :events
  belongs_to :building_topography
end
