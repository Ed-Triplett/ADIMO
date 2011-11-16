class Event < ActiveRecord::Base
  belongs_to :buildings
  has_one :patron
  has_one :military_order
  has_one :building_type
  has_one :event_type
end
