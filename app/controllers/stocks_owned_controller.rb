class StocksOwnedController < ApplicationController
  def index
    @sold_stocks = current_user.stocks
  end
end
