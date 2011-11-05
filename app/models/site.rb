class Site < ActiveRecord::Base
  has_many :building
  validates :name, :presence => true
  validates :principality, :presence => true
  validates :site, :validation_callback
  accepts_nested_attributes_for :building, :allow_destroy => true
end
