class Site < ActiveRecord::Base
  has_many :buildings
  has_many :events, :through => :buildings
  has_many :military_orders, :through => :events
  #has_many :building_types, :through => :buildings
  
  belongs_to :site_principality
  
  validates :name, :presence => true
  validates :site_principality, :presence => true
  
  # def military_orders
  #   ""
  # end
  # def patrons
  #   ""
  # end
end
