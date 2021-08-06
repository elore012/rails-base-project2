class User < ApplicationRecord
  has_many :user_stocks
  has_many :stocks, through: :user_stocks

  has_many :users
  has_many :admins, through: :users

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,  :confirmable



  def full_name
    return "#{first_name.capitalize} #{last_name.capitalize}" if first_name || last_name
  end

end
