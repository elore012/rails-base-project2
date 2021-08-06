# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.smtp_settings = {
  address: 'smtp.gmail.com'
  port: 465
  domain: 'gmail.com'
  user_name: ENV['jersonjabatstudent@gmail.com']
  password: ENV[]
} 
