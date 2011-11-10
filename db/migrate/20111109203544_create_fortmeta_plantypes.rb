class CreateFortmetaPlantypes < ActiveRecord::Migration
  def change
    create_table :fortmeta_plantypes do |t|
      t.string :fortmeta_plantype

      t.timestamps
    end
  end
end
