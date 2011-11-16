class Site < ActiveRecord::Base
  has_many :buildings
  validates :name, :presence => true
  validates :principality, :presence => true
end
