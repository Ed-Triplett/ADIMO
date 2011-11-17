class Event < ActiveRecord::Base
  belongs_to :building
  has_one :patron
  has_one :military_order
  belongs_to :building_type
  belongs_to :event_type
  
  def to_label
    "Event"
  end
end
