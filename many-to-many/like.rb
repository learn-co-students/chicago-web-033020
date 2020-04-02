# This is my join model! It has all the power!
# It needs to belong to both sides!
# "belonging" means carrying the reference to the object

class Like
  attr_reader :user, :tweet
  # def user
  #   @user
  # end

  @@all = []

  def self.all
    @@all
  end

  def initialize(tweet, user)
    # Should be a Tweet instance
    @tweet = tweet 
    # Should be a User instance
    @user = user 
    self.class.all << self
  end

  def username
    self.user.username
  end

  # def message
  #   self.tweet.message
  # end
end