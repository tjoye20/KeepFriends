# Keep Friends

The toughest part about keeping in touch with your friends, is sending out that first text, or making that first phone call. So, I decided to automate that process by creating a small program to do that for me.

I wrote a cron job to schedule running this script for me.

### Quickstart
After cloning the repository onto your local machine, run ```` bundle install ```` to install the gems used to build the program. Make sure your Ruby version is 2.2.5

To launch the program, run: ```` ruby text_friends.rb ````

Note: You need to create a Twilio API account, in order to get your ``` account_sid ``` and ```` auth_token ````.

To store those tokens in your environment, so it's not made public, create a ```` .env ```` file in your root directory, ```` touch .env ````.

Also, you should creaete a ```` .gitignore ```` file, and add ```` .env ```` to it, just so you don't accidentally add that file to your commits.

This is where you'll store all your private variables, like such: ```` account_sid=XXXXXXXXXXXXX ```` and call it in your app as, ```` ENV['account_sid'] ````.
