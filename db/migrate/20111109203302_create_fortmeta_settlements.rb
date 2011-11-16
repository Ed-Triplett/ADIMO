class CreateFortmetaSettlements < ActiveRecord::Migration
  def change
    create_table :fortmeta_settlements do |t|
      t.string :fortmeta_settlement

      t.timestamps
    end
  end
end
