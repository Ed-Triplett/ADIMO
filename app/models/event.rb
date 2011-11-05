class Event < ActiveRecord::Base
  belongs_to :building
  has_one :patron
  has_one :military_order
  has_one :building_type
  validates :order, :presence => true
  validates :event_type, :presence => true
  validates :building_type, :presence => true
  accepts_nested_attributes_for :patron, :allow_destroy => true
  accepts_nested_attributes_for :military_order, :allow_destroy => true
  accepts_nested_attributes_for :building_type, :allow_destroy => true
end
