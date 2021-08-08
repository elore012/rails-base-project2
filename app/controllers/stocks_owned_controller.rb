class StocksOwnedController < ApplicationController
  def index
    @owned_stock_records = current_user.owned_stock_records
  end
end
