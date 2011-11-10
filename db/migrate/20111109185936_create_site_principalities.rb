class CreateSitePrincipalities < ActiveRecord::Migration
  def change
    create_table :site_principalities do |t|
      t.string :principality_name

      t.timestamps
    end
  end
end
