class EventsController < ApplicationController
  active_scaffold :event do |conf|
    config.label = "Occupation or Construction Event"
    config.columns = [:event_type, :military_order, :building_type, :begin_date, :earliest_begin_date, :latest_begin_date, :end_date, :earliest_end_date, :latest_end_date, :note]
    list.columns.exclude :note
    list.sorting = {:event_type => 'ASC'}
    columns [:event_type].label = "Event Type"
    columns [:military_order].label = "Military Order"
    columns [:building_type].label = "Building Type"
    columns [:begin_date].label = "Begin Date"
    columns [:earliest_begin_date].label = "Earliest Begin Date"
    columns [:latest_begin_date].label = "Latest Begin Date"
    columns [:end_date].label = "End Date"
    columns [:earliest_end_date].label = "Earliest End Date"
    columns [:latest_end_date].label = "Latest End Date"

  end
end 
