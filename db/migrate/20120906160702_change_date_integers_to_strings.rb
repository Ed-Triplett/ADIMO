class ChangeDateIntegersToStrings < ActiveRecord::Migration
  def up
  	change_column :events, :begin_date, :string
  	change_column :events, :earliest_begin_date, :string
  	change_column :events, :latest_begin_date, :string
  	change_column :events, :end_date, :string
  	change_column :events, :earliest_end_date, :string
  	change_column :events, :latest_end_date, :string
  end

  def down
  	change_column :events, :begin_date, :integer
  	change_column :events, :earliest_begin_date, :integer
  	change_column :events, :latest_begin_date, :integer
  	change_column :events, :end_date, :integer
  	change_column :events, :earliest_end_date, :integer
  	change_column :events, :latest_end_date, :integer
  end
end