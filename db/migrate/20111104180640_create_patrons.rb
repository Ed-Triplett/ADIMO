class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.string :name
      t.string :type
      t.integer :reign_begins
      t.integer :reign_ends
      t.string :kingdom
      t.text :note

      t.timestamps
    end
  end
end
