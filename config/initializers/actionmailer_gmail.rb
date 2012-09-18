ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address  => "smtp.gmail.com",
  :port  => 587,
  :user_name  => "rubygrc2012@gmail.com",
  :password  => "orionrubygrc2012",
  :enable_starttls_auto => true,
  :authentication  => :plain
}
git
ActionMailer::Base.raise_delivery_errors = true