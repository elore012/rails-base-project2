class PagesController < ApplicationController

  def index
    @admin = current_user.admin
    @user = current_user
    @tracked_user = User.all
    @owned_stock_records = current_user.owned_stock_records
    @sold_stock_records = current_user.sold_stock_records
 
  end

  def pending
    user = User.find_by_id(params[:id])
    user.status = true
      flash[:notice] = "true "
      redirect_to root_path
    
    # if params[:status] == "false"
    #   @users = User.where(status: false)
    #   @user.status = true
    #   @user.save
    #   flash[:notice] = "true "
    #   redirect_to root_path
   
    # end
    
     
    
    # @user = User.all
    # if params[:id].present?
    # @user.status = true
    # @user.save

    # user = User.find_by(id: params[user.id])
    # user.status = true

    # user = User.first
    # user.status = true
    # user.save
    # else
    #   flash[:notice] = " no param detected"
    #   redirect_to root_path
    # end
  end
end
