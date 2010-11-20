ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
:enable_starttls_auto => true,
:address => 'smtp.gmail.com',
:port => 587,
:domain => "example.com",
:user_name => 'administrator@example.com',
:password => 'yourpassword',
:authentication => 'plain',
}
