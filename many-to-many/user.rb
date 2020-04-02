class User
  attr_accessor :username
  # attr_writer :username
  
  # def username
  #   @username
  # end

  # def username=(new_name)
  #   @username = new_name
  # end
  
  def initialize(username)
    @username = username
  end

  def tweets
    # use Tweet.all to find my tweets
    Tweet.all.select do |tweet_obj|
      tweet_obj.username == self.username
    end
  end

  def post_tweet(message)
    # create a new tweet
    new_tweet = Tweet.new(message, self)
    # add it  to the user's collection of tweets
  end

  def like_tweet(tweet)
    Like.new(tweet, self)
  end

  def likes
    # First, get to all of the likes, then find all of mine from that
    likes = Like.all.select do |like|
      like.username == self.username
    end
  end

  def liked_tweets
    # Then for each of my likes, grab the tweet that was liked
    likes.map do |like|
      like.tweet
    end
  end
end

