class ModifyEvents < ActiveRecord::Migration
  def up
    add_column :events, :patron_type_id, :integer
    add_column :events, :military_order_id, :integer
    add_column :events, :patron_id, :integer
  end

  def down
  end
end
