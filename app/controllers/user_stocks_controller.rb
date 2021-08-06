class UserStocksController < ApplicationController

  def create
    stock = Stock.check_db(params[:ticker])
    if stock.blank?
      stock = Stock.new_lookup(params[:ticker])

      stock_history = Stock.new_lookup(params[:ticker])

      current_user.investment  = current_user.investment - stock.price
      
      current_user.save
      stock.save
    end
    @user_stock = UserStock.create(user: current_user, stock: stock)
    
    current_user.investment  = current_user.investment - stock.price
    current_user.save
   
    flash[:notice] = "Purchase successful. $#{stock.price} was deducted from your investment "
    redirect_to my_portfolio_path
  end

    def destroy
      stock = Stock.find(params[:id])
      user_stock = UserStock.where(user_id: current_user.id, stock_id: stock.id).first.destroy

      current_user.investment  = current_user.investment + stock.price
    current_user.save

      flas sold. $#{stock.price} has been added to your investment"
      redirect_to my_portfolio_path
    end


end
