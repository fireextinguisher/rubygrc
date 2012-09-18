require 'tlsmail'
Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.gmail.com',
  :port => 587,
  :tls => true,
  :domain => 'mail.google.com',  # mail.customdomain.com if you use google apps
  :authentication => :plain,
  :user_name  => 'rubygrc2012@gmail.com',  # make sure you include the full email address
  :password  => 'orionrubygrc2012'
}