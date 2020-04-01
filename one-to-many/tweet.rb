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
    self.class.all << self
  end

  def username
    self.user.username
  end


  # def pass_self_around(my_object)
  #   p my_object
  # end
end

