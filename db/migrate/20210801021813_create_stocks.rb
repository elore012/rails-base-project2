class CreateStocks < ActiveRecord::Migration[6.0]
  def change
    create_table :stocks do |t|
      t.string :ticker
      t.string :company
      t.decimal :price

      t.timestamps
    end
  end
end
