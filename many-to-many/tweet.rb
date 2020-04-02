class Tweet
  attr_reader :message, :user
  # def self.all=(new_value)
  #   @@all = new_value
  # end

  def self.all
    @@all
  end

  @@all = []

  def initialize(message, user)
    @message = message
    @user = user
    Tweet.all << self
    p self.class.all
  end

  def username
    self.user.username
  end

  def likes
    Like.all.select do |like|
      self == like.tweet
    end
  end

  def likers
    # The users who have liked this tweet
    likes.map do |like|
      like.user
    end
  end

  # def pass_self_around(my_object)
  #   p my_object
  # end
end

