class Patron < ActiveRecord::Base
  has_and_belongs_to_many :events
  # belongs_to :patron_date_begin, :class_name => 'PatronDate'
  # belongs_to :patron_date_end, :class_name => 'PatronDate'
  # belongs_to :patron_name
  # belongs_to :patron_kingdom
  belongs_to :patron_type
  
  def to_label
    "#{name} (#{reign_begins}-#{reign_ends}) #{kingdom}"
  end
end
