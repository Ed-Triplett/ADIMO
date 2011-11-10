class MilitaryOrder < ActiveRecord::Base
belongs_to :event
has_one :milorders_name
validates :origin_date :presence => true
validates :dissolution_date :presence => true
end
