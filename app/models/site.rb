class Site < ActiveRecord::Base
  has_many :building
  validates :name, :presence => true
  validates :principality, :presence => true
  validates :site, :validation_callback
end
