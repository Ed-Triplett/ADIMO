class CreateFortmetaMonastBlgs < ActiveRecord::Migration
  def change
    create_table :fortmeta_monast_blgs do |t|
      t.string :fortmeta_monast_bldgs

      t.timestamps
    end
  end
end
