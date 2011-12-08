class MilitaryOrdersController < ApplicationController
  active_scaffold :military_order do |conf|
    conf.columns = [:name, :origin_date, :dissolution_date, :note]
    #conf.columns[:milorders_name].form_ui = :select
    #conf.columns[:milorders_name].label = 'Name'
  end
end 
