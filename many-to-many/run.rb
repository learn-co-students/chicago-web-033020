require 'pry'
require_relative 'tweet'
require_relative 'user'
require_relative 'like'

# SEEDING USERS
dad = User.new("coffee_dad")
mom = User.new("matcha_mom")
dad_jr = User.new("son_of_coffee_dad")

# SEEDING TWEETS
tweet_one = dad.post_tweet("having coffee#")
tweet_two = dad.post_tweet("enjoying my coffee")
tweet_three = mom.post_tweet("mmmmmmmatcha")
tweet_four = mom.post_tweet("#MatchaMotivation Live til the last drop!")
tweet_five = dad_jr.post_tweet("enjoying my coffee")

# SEEDING LIKES
like_one = dad.like_tweet(tweet_three)
like_two = mom.like_tweet(tweet_two)
like_three = dad_jr.like_tweet(tweet_five)

# p Like.all

# p "**************"

# p dad.liked_tweets

p tweet_one.likers

p tweet_two.likers


