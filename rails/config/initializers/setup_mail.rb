ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:              ENV['SMTP_ADDRESS'],
  port:                 587,
  domain:               ENV['SMTP_DOMAIN'],
  user_name:            ENV['SMTP_USERNAME'],
  password:             ENV['SMTP_PASSWORD'],
  authentication:       'plain',
  enable_starttls_auto: true 
}
ActionMailer::Base.default_options = {
  from: ENV['SMTP_USERNAME']  
}