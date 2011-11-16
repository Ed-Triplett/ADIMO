class PatronsController < ApplicationController
  layout 'application'
  active_scaffold :patron do |conf|
  end
end 
