class AddInvestmentToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :investment, :decimal
  end
end
