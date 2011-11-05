class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :principality
      t.text :notes

      t.timestamps
    end
  end
end
