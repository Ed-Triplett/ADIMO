class Event < ActiveRecord::Base
  belongs_to :building
  has_one :patron
  has_one :military_order
  validates :order, :presence => true
  validates :event_type, :presence => true
  validates :building_type, :presence => true
end
