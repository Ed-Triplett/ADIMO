class PatronKingdom < ActiveRecord::Base
  # belongs_to :patron
  def to_label
    "#{patron_kingdom}"
  end
end
