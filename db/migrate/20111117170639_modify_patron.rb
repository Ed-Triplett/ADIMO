class ModifyPatron < ActiveRecord::Migration
  def up
    add_column :patrons, :patron_name_id, :integer
    add_column :patrons, :patron_type_id, :integer
    add_column :patrons, :patron_kingdom_id, :integer
    add_column :patrons, :patron_date_id, :integer
  end

  def down
  end
end
