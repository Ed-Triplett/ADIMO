class Event < ActiveRecord::Base
  belongs_to :building
  has_one :patron
  has_one :military_order
  belongs_to :building_type
  belongs_to :event_type
  
  def to_label
    "#{event_type.to_label if event_type != nil}, #{military_order.to_label if military_order}, #{building_type.to_label if building_type != nil}, #{patron.to_label if patron != nil}"
  end
end
