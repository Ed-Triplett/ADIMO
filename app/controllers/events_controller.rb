class EventsController < ApplicationController
  layout 'application'
  active_scaffold :event do |conf|
    conf.label = "Occupation or Construction Event"
    conf.list.columns= [:event_type, :military_order, :building_type, :patrons, :begin_date, :earliest_begin_date, :latest_begin_date, :end_date, :earliest_end_date, :latest_end_date, :note]
    conf.columns= [:event_type, :patrons, :begin_date, :earliest_begin_date, :latest_begin_date, :end_date, :earliest_end_date, :latest_end_date, :note]
    conf.show.columns= [:event_type, :military_order, :building_type, :patrons, :begin_date, :earliest_begin_date, :latest_begin_date, :end_date, :earliest_end_date, :latest_end_date, :note]
    conf.list.columns.exclude :note
    conf.list.sorting = {:event_type => 'ASC'}
    conf.columns[:event_type].label = "Event Type"
    conf.columns[:event_type].form_ui = :select
    conf.columns[:military_order].label = "Military Order"
    conf.columns[:military_order].form_ui = :select
    conf.columns[:building_type].label = "Building Type"
    # conf.columns[:building_type].form_ui = :select
    conf.columns[:begin_date].label = "Begin Date"
    conf.columns[:earliest_begin_date].label = "Earliest Begin Date"
    conf.columns[:latest_begin_date].label = "Latest Begin Date"
    conf.columns[:end_date].label = "End Date"
    conf.columns[:earliest_end_date].label = "Earliest End Date"
    conf.columns[:latest_end_date].label = "Latest End Date"
    conf.columns[:event_type].actions_for_association_links = [:show]
    # conf.columns[:military_order].actions_for_association_links = [:show]
    conf.columns[:patrons].actions_for_association_links = [:show]
    conf.columns[:patrons].form_ui = :select
  end
end 
