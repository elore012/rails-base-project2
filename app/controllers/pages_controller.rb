class PagesController < ApplicationController

  def index
    @admin = current_user.admin
    @user = current_user
    @tracked_user = User.all
    @owned_stock_records = current_user.owned_stock_records
    @sold_stock_records = current_user.sold_stock_records
  end

  def pending
    # @user = User.all
    # if params[:id].present?
    # @user.status = true
    # @user.save

      # user = User.find_by(id: params[user.id])
      # user.status = true

      # user = User.first
      # user.status = true
      # user.save
      flash[:notice] = "true "
      redirect_to root_path
    # else
    #   flash[:notice] = " no param detected"
    #   redirect_to root_path
    # end
  end
end
