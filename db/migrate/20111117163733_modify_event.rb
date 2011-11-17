class ModifyEvent < ActiveRecord::Migration
  def up
    add_column :events, :building_type_id, :integer
    add_column :events, :event_type_id, :integer
  end

  def down
  end
end
