class CreatePatronNames < ActiveRecord::Migration
  def change
    create_table :patron_names do |t|
      t.string :patron_name

      t.timestamps
    end
  end
end
