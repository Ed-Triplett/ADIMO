class MilitaryOrder < ActiveRecord::Base
belongs_to :event
validates :name, :presence => true
validates :origin_date :presence => true
validates :dissolution_date :presence => true
end
