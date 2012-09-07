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

#class ChangeDateIntegersToStrings < ActiveRecord::Migration

  #def self.up

    #change_table :events do |t|

      #t.change :begin_date, :integer
      #t.change :earliest_begin_date, :integer
      #t.change :latest_begin_date, :integer
      #t.change :end_date, :integer
      #t.change :earliest_end_date, :integer
      #t.change :latest_end_date, :integer

    #end
  #end

  #def self.down

    #change_table :events do |t|

      #t.change :begin_date, :string
      #t.change :earliest_begin_date, :string
      #t.change :latest_begin_date, :string
      #t.change :end_date, :string
      #t.change :earliest_end_date, :string
      #t.change :latest_end_date, :string

    #end
  #end

#end