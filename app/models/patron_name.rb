class PatronName < ActiveRecord::Base
  # belongs_to :patron
  def to_label
    "#{patron_name}"
  end
end
