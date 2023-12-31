require 'twilio-ruby'

# Your Twilio credentials
account_sid = 'your_account_sid_goes_here'
auth_token = 'your_auth_token_goes_here'

# Create a Twilio client
client = Twilio::REST::Client.new(account_sid, auth_token)

# Prompt the user for input
print "Enter your WhatsApp number (e.g., whatsapp:+1234567890): "
from_whatsapp_number = gets.chomp

print "Enter the recipient's WhatsApp number: "
to_whatsapp_number = gets.chomp

# Send the WhatsApp message
message = client.messages.create(
  from: from_whatsapp_number,
  to: to_whatsapp_number,
  body: 'bro'
)

puts "WhatsApp message sent!"
