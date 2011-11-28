class ArchitectureType < ActiveRecord::Base
  def to_label
    "#{architecture_type}"
  end
end
