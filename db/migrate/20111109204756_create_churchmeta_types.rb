class CreateChurchmetaTypes < ActiveRecord::Migration
  def change
    create_table :churchmeta_types do |t|
      t.string :churchmeta_type

      t.timestamps
    end
  end
end
