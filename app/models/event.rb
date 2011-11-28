class Event < ActiveRecord::Base
  belongs_to :building
  has_and_belongs_to_many :patrons
  has_one :military_order
  belongs_to :building_type
  belongs_to :event_type
  
  def to_label
    str = ''
    patrons.each do |p|
      str += ', ' if str != ''
      str += p.to_label
    end
    "#{event_type.to_label if event_type != nil}, #{military_order.to_label if military_order}, #{building_type.to_label if building_type != nil}, #{str}"
  end
end
