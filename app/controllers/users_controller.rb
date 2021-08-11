class UsersController < ApplicationController
  

  before_action :authorize_admin, only: :create

  def create
    # admins only
  end

  def my_portfolio
    @tracked_stocks = current_user.stocks
    @balance = current_user.investment 
    @user_status = current_user.status
  end

  private

  # This should probably be abstracted to ApplicationController
  # as shown by diego.greyrobot
  def authorize_admin
    return if current_user.admin?
    redirect_to root_path, alert: 'Admins only!'
  end

end
