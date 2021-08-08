class PagesController < ApplicationController

  def index
    @admin = current_user.admin
    @user = current_user
    @tracked_user = User.all
  end

  def pending
  
    # user = User.find_by(id: params[:user.id])
    # user.status = true
    # user.save
    # flash[:notice] = "true"
    # redirect_to root_path

    if params[:user_id].present?

      # user = User.find_by(id: params[user.id])
      # user.status = true

      # user = User.first
      # user.status = true
      # user.save
      flash[:notice] = "true"
      redirect_to root_path
    else
      flash[:notice] = " no param detected"
      redirect_to root_path
    end
  end
end
