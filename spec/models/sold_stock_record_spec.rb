require 'rails_helper'

RSpec.describe SoldStockRecord, :type => :model do

  describe "Associations user" do
    it { should belong_to(:user) }
  end

end