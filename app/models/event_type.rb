class EventType < ActiveRecord::Base
  # belongs_to :event
  # has_one :fortress_metadatum
  # has_one :monastic_metadatum
  # has_one :church_metadatum
  def to_label
    "#{event_type}"
  end
end
