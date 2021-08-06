class Stock < ApplicationRecord
  has_many :user_stocks
  has_many :users, through: :user_stocks
  
  validates :company, :ticker, presence: true

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: 'Tpk_afc9df93d04c4b6b825f39e6e72088d6',
      secret_token: 'Tsk_69ad1c699b9e477aa428a8628a9567ef',
      endpoint: 'https://sandbox.iexapis.com/v1'
    )
    
    begin
      new(ticker: ticker_symbol, company: client.company(ticker_symbol).company_name, price: client.price(ticker_symbol))
    rescue => e
      return nil
    end
  end

  def self.check_db(ticker_symbol)
    where(ticker: ticker_symbol).first
  end
  

end
