class CreateOrderNames < ActiveRecord::Migration
  def change
    create_table :order_names do |t|
      t.string :order_name

      t.timestamps
    end
  end
end
