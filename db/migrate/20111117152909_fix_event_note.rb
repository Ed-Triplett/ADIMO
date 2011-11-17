class FixEventNote < ActiveRecord::Migration
  def up
    remove_column :events, :Note
    add_column :events, :note, :string
  end

  def down
  end
end
