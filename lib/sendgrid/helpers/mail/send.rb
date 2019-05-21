require 'sendgrid-ruby'
include SendGrid

from = Email.new(email: 'test@example.com')
subject = 'Hello World from the SendGrid Ruby Library!'
to = Email.new(email: 'test@example.com')
content = Content.new(type: 'text/plain', value: 'Hello, Email!')
mail = Mail.new(from, subject, to, content)

sg = SendGrid::API.new(api_key: ENV['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'])
response = sg.client.mail._('send').post(request_body: mail.to_json)
puts response.status_code
puts response.body
puts response.headers
