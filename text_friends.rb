require 'twilio-ruby'
require 'dotenv'
Dotenv.load

array_of_friends = [ENV['ray'], ENV['jen'], ENV['akeem'], ENV['gabe'], ENV['samuel'], ENV['brandon']]
my_num = ENV['my_number']

text_message = ["Hey, it's Tj. How're things on your end?", "Hey, it's Tj. Wassup?"]


@client = Twilio::REST::Client.new ENV['account_sid'], ENV['auth_token']

@client.messages.create(
  from: my_num,
  to: "5126981651",
  body: text_message.sample
)
