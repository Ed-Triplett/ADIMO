class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :begin_date
      t.integer :earliest_begin_date
      t.integer :latest_begin_date
      t.integer :end_date
      t.integer :earliest_end_date
      t.integer :latest_end_date
      t.string :building_type
      t.string :event_type
      t.string :Note

      t.timestamps
    end
  end
end
