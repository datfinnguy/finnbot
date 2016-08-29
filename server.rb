require 'twilio-ruby'
require 'sinatra'

get '/' do
  puts "Hello from FinnBot"
end

post '/sms' do
  puts "Message: #{params['Body']}!"

  twiml = Twilio::TwiML::Response.new do |r|
    r.Message "Added to our list of robot sightings! Head for the hills!"
  end
  twiml.text
end
