class CreateOwnedStockRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :owned_stock_records do |t|
      t.string :ticker
      t.string :company
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
