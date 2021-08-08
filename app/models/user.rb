class User < ApplicationRecord
  
  has_many :user_stocks
  has_many :stocks, through: :user_stocks

  has_many :owned_stock_records
  has_many :sold_stock_records

  has_many :users
  has_many :admins, through: :users

  # Include default devise modules. Others available are:
  # :registerable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  def full_name
    return "#{first_name.capitalize} #{last_name.capitalize}" if first_name || last_name
  end

end
