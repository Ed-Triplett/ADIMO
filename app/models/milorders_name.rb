class MilordersName < ActiveRecord::Base
  # belongs_to :military_order
  def to_label
    "#{order_name}"
  end
end
