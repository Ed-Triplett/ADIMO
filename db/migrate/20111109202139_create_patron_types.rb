class CreatePatronTypes < ActiveRecord::Migration
  def change
    create_table :patron_types do |t|
      t.string :patron_type

      t.timestamps
    end
  end
end
