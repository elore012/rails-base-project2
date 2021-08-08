class StocksToSellController < ApplicationController
  def index
    @sold_stock_records = current_user.sold_stock_records
  end
end
