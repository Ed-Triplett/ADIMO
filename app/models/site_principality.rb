class SitePrincipality < ActiveRecord::Base
  # belongs_to :sites
  def to_label
    "#{principality_name}"
  end
end
