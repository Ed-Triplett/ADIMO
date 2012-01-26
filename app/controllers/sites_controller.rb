class SitesController < ApplicationController
  layout 'application'
  active_scaffold :site do |conf|
    conf.label = "Sites"
    conf.list.columns = [:name, :site_principality, :buildings, :military_orders, :patrons]
    # conf.columns << :mimilitary_orders
    # conf.columns << :patrons
    # conf.columns << :events
    # conf.columns = [:name, :principality, :buildings, :military_order, :patrons, :notes]
    conf.create.columns = [:name, :site_principality, :notes]
    conf.update.columns = [:name, :site_principality, :notes]
    conf.show.columns = [:name, :site_principality, :buildings, :military_orders, :patrons, :events, :notes]
    conf.columns[:name].label = "Name"
    conf.columns[:site_principality].label = "Principality"
    conf.columns[:site_principality].form_ui = :select
    
    conf.columns[:patrons].actions_for_association_links = [:show]
    conf.columns[:military_orders].actions_for_association_links = [:show]
    conf.columns[:events].actions_for_association_links = [:show]
    conf.columns[:site_principality].actions_for_association_links = [:show]
    
    list.columns.exclude :notes
    list.sorting = {:name => "ASC"}
    
  end

  # before_filter :authenticate_user!
  def create_authorized?
    # you can also check e.g. :params[:nested] or active_scaffold_constraints[:parent]
    current_user != nil ? true : false    
  end
  def delete_authorized?(record = nil)
    # you can also check e.g. :params[:nested] or active_scaffold_constraints[:parent]
    current_user != nil ? true : false    
  end
  def update_authorized?(record = nil)
    # you can also check e.g. :params[:nested] or active_scaffold_constraints[:parent]
    current_user != nil ? true : false    
  end
end
