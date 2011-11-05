class Building < ActiveRecord::Base
  belongs_to :site
  has_many :event
  validates :name, :presence => true
  validates :topography, :presence => true
end
