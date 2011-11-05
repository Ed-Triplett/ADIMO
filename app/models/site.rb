class Site < ActiveRecord::Base 
  validates :name, :presence => true
  validates :principality, :presence => true
  has_many :building

end
