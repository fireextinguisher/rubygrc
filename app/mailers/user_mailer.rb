class UserMailer < ActionMailer::Base
  default :from => "no-reply@#{host}"

  def forgot_password(user, key)
    @user, @key = user, key
    mail( :subject => "#{app_name} -- forgotten password",
          :to      => user.email_address,
          :from    => "rubygrc2012@gmail.com" )
  end


  def activation(user, key)
    @user, @key = user, key
    mail( :subject => "#{app_name} -- activate",
          :to      => user.email_address,
          :from    => "rubygrc2012@gmail.com" )
  end

end
