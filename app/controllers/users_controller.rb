class UsersController < ApplicationController
  def my_portfolio
     @tracked_stocks = current_user.stocks
     @balance = current_user.investment 
     @user_status = current_user.status
  end
end
