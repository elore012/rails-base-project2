class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def index
    @admin = current_user.admin
    @user = current_user
    
  end

end
