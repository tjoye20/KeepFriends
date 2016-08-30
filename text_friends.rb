require 'twilio-ruby'
require 'dotenv'
Dotenv.load

array_of_friends = [ENV['ray'], ENV['jen'], ENV['akeem'], ENV['gabe'], ENV['samuel'], ENV['brandon']]
my_num = ENV['my_number']

text_message = ["Hey, how're things on your end?", "Hey, wassup?"]


@client = Twilio::REST::Client.new ENV['account_sid'], ENV['auth_token']

@client.messages.create(
  from: my_num,
  to: array_of_friends.sample,
  body: text_message.sample
)
