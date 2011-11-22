class MilitaryOrder < ActiveRecord::Base
belongs_to :event
belongs_to :milorders_name
validates :origin_date, :presence => true
validates :dissolution_date, :presence => true
end
