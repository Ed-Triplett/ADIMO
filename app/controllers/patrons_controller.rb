class PatronsController < ApplicationController
  layout 'application'
  active_scaffold :patron do |conf|
    conf.columns = [:name, :reign_begins, :reign_ends, :kingdom, :patron_type]
    # conf.columns = [:patron_name, :patron_type, :patron_date_begin, :patron_date_end, :patron_kingdom, :note]
    # conf.columns[:patron_name].label = 'Name'
    # conf.columns[:patron_name].form_ui = :select
    conf.columns[:patron_type].label = 'Type'
    conf.columns[:patron_type].form_ui = :select
    conf.columns[:patron_type].actions_for_association_links = [:show]
    # conf.columns[:patron_date_begin].label = 'Reign begin'
    # conf.columns[:patron_date_begin].form_ui = :select
    # conf.columns[:patron_date_end].label = 'Reign end'
    # conf.columns[:patron_date_end].form_ui = :select
    # conf.columns[:patron_kingdom].label = 'Kingdom'
    # conf.columns[:patron_kingdom].form_ui = :select
    # conf.columns[:patron_type].sort_by :sql => 'reign_begins'
  end
end 
