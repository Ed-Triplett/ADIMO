class CreateMilitaryOrders < ActiveRecord::Migration
  def change
    create_table :military_orders do |t|
      t.string :name
      t.integer :origin_date
      t.integer :dissolution_date
      t.text :note

      t.timestamps
    end
  end
end
