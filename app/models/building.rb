class Building < ActiveRecord::Base
  belongs_to :site
  has_many :event
  validates :name, :presence => true
  validates :topography, :presence => true
  accepts_nested_attributes_for :event, :allow_destroy => true
end
