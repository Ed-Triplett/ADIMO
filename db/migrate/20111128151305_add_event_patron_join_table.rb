class AddEventPatronJoinTable < ActiveRecord::Migration
  def up
    create_table :events_patrons, :id => false do |t|
      t.references :event, :patron
    end
  end

  def down
    drop_table :events_patrons
  end
end
