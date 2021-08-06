class PagesController < ApplicationController

  def index
    @admin = current_user.admin
    @user = current_user
    @tracked_user = User.all
  end

  def pending
    if true

      user = User.all
      user.first.status = true
      user.first.save
      
      flash[:notice] = "true"
      redirect_to root_path
    else
      flash[:notice] = " no user"
      redirect_to root_path
    end
  end
end
