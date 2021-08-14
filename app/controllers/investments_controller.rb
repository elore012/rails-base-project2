class InvestmentsController < ApplicationController

  def add
    if params[:number].present?
      amount_to_deposit = params[:number].to_i

      if amount_to_deposit > 0
        current_user.investment = current_user.investment + amount_to_deposit
        current_user.save     
        flash[:notice] = "$#{amount_to_deposit} has been added"
        redirect_to my_portfolio_path
      else
        flash[:alert] = "Deposit should be greated than $0"
        redirect_to my_portfolio_path
      end
    else
      flash[:alert] = "Can't be blank"
      redirect_to my_portfolio_path
    end
  end
end