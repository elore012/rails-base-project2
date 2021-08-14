require 'rails_helper'

RSpec.describe Stock, :type => :model do
  subject {
    described_class.new(ticker: "fb",
                    company: "Facebook Inc",
                    price: 100)
  }

  describe "Associations" do
    it { should have_many(:users).through(:user_stocks) }
  end

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a ticker" do
    subject.ticker = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a company" do
    subject.company = nil
    expect(subject).to_not be_valid
  end

  it "is valid without a price" do
    subject.price = nil
    expect(subject).to be_valid
  end

end