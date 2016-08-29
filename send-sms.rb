require 'dotenv'
Dotenv.load
require 'twilio-ruby'

# put your own credentials here
account_sid = ENV['TWILLIO_SID']
auth_token = ENV['TWILLIO_TOKEN']

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token 

@client.account.messages.create(
  from: ENV['FROM_PHONE'],
  to: ENV['TO_PHONE'],
  body: 'Robot invasion! Reply back with any sightings.'
)
