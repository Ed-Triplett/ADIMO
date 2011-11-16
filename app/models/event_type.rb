class EventType < ActiveRecord::Base
  belongs_to :events
  has_one :fortress_metadatum
  has_one :monastic_metadatum
  has_one :church_metadatum
end
