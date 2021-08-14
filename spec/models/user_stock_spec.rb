require 'rails_helper'

RSpec.describe UserStock, :type => :model do

  describe "Associations" do
    it { 
      should belong_to(:user)
      should belong_to(:stock) 
    }
  end


end