class CreatePatronDates < ActiveRecord::Migration
  def change
    create_table :patron_dates do |t|
      t.string :patron_dates

      t.timestamps
    end
  end
end
