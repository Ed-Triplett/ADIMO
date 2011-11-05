class CreateChurchMetadata < ActiveRecord::Migration
  def change
    create_table :church_metadata do |t|
      t.string :type
      t.string :plan
      t.text :note

      t.timestamps
    end
  end
end
