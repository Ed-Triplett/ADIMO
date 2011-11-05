class Site < ActiveRecord::Base
  has_many :building
  validates :name
  validates:principality
end
