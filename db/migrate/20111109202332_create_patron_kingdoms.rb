class CreatePatronKingdoms < ActiveRecord::Migration
  def change
    create_table :patron_kingdoms do |t|
      t.string :patron_kingdom

      t.timestamps
    end
  end
end
