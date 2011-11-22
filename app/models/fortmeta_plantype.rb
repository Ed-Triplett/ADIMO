class FortmetaPlantype < ActiveRecord::Base
  # belongs_to :fortress_metadatum
  def to_label
    "#{fortmeta_plantype}"
  end
end
