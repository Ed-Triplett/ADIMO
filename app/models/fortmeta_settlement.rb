class FortmetaSettlement < ActiveRecord::Base
  # belongs_to :fortress_metadatum
  def to_label
    "#{fortmeta_settlement}"
  end
end
