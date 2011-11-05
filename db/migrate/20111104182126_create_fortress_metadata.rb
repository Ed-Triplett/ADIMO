class CreateFortressMetadata < ActiveRecord::Migration
  def change
    create_table :fortress_metadata do |t|
      t.string :relationship_to_settlement
      t.string :plan_type
      t.string :monastic_buildings

      t.timestamps
    end
  end
end
