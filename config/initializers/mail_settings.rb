ActionMailer::Base.smtp_settings = { 
  :address => "mail.espindula.com", 
  :port => 25, 
  :domain => "espindula.com", 
  :user_name => "fabio@espindula.com", 
  :password => "jv21icdt", 
  :authentication => :login 
}