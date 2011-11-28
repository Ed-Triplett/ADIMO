class CreateArchitectureTypes < ActiveRecord::Migration
  def change
    create_table :architecture_types do |t|
      t.string :architecture_type

      t.timestamps
    end
  end
end
