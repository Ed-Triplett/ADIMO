class CreateMonasticMetadata < ActiveRecord::Migration
  def change
    create_table :monastic_metadata do |t|
      t.string :buildings
      t.text :note

      t.timestamps
    end
  end
end
