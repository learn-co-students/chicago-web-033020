require 'pry'
require_relative 'tweet'
require_relative 'user'

dad = User.new("coffee_dad")
mom = User.new("matcha_mom")
tweet = Tweet.new("having coffee#", dad)

posted = dad.post_tweet("enjoying my coffee")
other = mom.post_tweet("mmmmmmmatcha")
# puts "Posted tweet info:"
# p posted
# p posted.username

puts "Matcha_mom reader methods: (username and tweets)"
p mom.username
p mom.tweets

# puts "Tweet reader methods: (message, user)"
# p tweet.message
# p tweet.user

# puts "Tweet class method all:"
# p Tweet.all
