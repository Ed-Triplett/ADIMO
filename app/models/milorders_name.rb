class MilordersName < ActiveRecord::Base
  # belongs_to :military_order
  def to_label
    "#{milorders_name}"
  end
end
