# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {

:address => 'smtp.sendgrid.net',

:port => '587',

:authentication => :plain,

:user_name => ENV['api_key'],

:password => ENV['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'],

:domain => 'heroku.com',

:enable_starttls_auto => true

}
