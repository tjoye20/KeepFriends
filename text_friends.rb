require 'dotenv'
Dotenv.load

array_of_friends = [ENV['ray'], ENV['jen'], ENV['akeem'], ENV['gabe'], ENV['samuel'], ENV['brandon']]
my_num = ENV['my_number']

text_message = ["Hey, it's Tj. How're things on your end? Text back my regular number to confirm you got this.", "Hey, it's Tj. Wassup? Text back my regular number to confirm you got this."]


@client = Twilio::REST::Client.new ENV['account_sid'], ENV['auth_token']

@client.messages.create(
  from: my_num,
  to: "4692746225",
  body: text_message.sample
)
