class PatronType < ActiveRecord::Base
  # belongs_to :patron
  def to_label
    "#{patron_type}"
  end
end
