class CreateMonastmetaBldgs < ActiveRecord::Migration
  def change
    create_table :monastmeta_bldgs do |t|
      t.string :monastmeta_bldgs

      t.timestamps
    end
  end
end
