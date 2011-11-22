class ChurchmetaType < ActiveRecord::Base
# belongs_to :churchmeta_type
  def to_label
    "#{churchmeta_type}"
  end
end
