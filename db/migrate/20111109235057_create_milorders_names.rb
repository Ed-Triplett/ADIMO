class CreateMilordersNames < ActiveRecord::Migration
  def change
    create_table :milorders_names do |t|
      t.string :order_name

      t.timestamps
    end
  end
end
