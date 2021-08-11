require 'rails_helper'

RSpec.describe User, :type => :model do
 
  subject {
    described_class.new(email: "user@test.com",
                    first_name: "Juan",
                    last_name: "Garcia",
                    investment: 0,
                    password: "password")
  }

  describe "Associations" do
    it { 
        should have_many(:user_stocks)
        should have_many(:stocks).through(:user_stocks) 
        should have_many(:owned_stock_records)
        should have_many(:sold_stock_records)
      }
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a email" do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a first name" do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a last name" do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid with negative number" do
    subject.investment = -1
    expect(subject).to_not be_valid
  end

  it "is not valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid
  end

end