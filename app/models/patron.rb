class Patron < ActiveRecord::Base
  belongs_to :event
  validates :name, :presence => true
  validates :type, :presence => true
  validates :kingdom, :presence => true
end
