class MonastmetaBldg < ActiveRecord::Base
# belongs_to :monastic_metadatum
  def to_label
    "#{monastmeta_bldg}"
  end
end
