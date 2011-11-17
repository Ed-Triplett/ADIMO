class ChurchMetadatum < ActiveRecord::Base
  set_table_name 'church_metadata'
  belongs_to :building_type
  belongs_to :churchmeta_type
end
