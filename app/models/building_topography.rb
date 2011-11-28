class BuildingTopography < ActiveRecord::Base
  # belongs_to :building
  
  def to_label
    "#{building_topography}"
  end
end
