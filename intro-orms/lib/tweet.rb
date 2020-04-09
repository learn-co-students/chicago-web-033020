require_relative 'saveable_object'

class Tweet < SaveableObject
  attr_accessor :message, :username

  def self.all
    # TODO: Refactor to talk to database
    tweets_info = DB[:conn].execute("select * from tweets;")
    tweets_info.map do |tweet_info| 
      Tweet.new(tweet_info) 
    end
  end

  def initialize(attrs={})
    @id = attrs['id']
    @message = attrs['message']
    @username = attrs['username']

  end

  def explore_ivars
    binding.pry
  end

end
