# QUESTION 3

# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def photos
    Photo.all.select do |photo|
      photo.user == self
    end
  end

end

class Photo
  attr_accessor :user

  @@all = []

  def self.all
    @@all
  end

  def initialize
    self.class.all << self
  end

  def make_comment(message)
    Comment.new(message, self)
  end

  def comments
    Comment.all.select do |comment|
      comment.photo == self
    end
  end
end

class Comment
  attr_reader :message, :photo

  @@all = []

  def self.all
    @@all
  end

  def initialize(message, photo)
    @message = message
    @photo = photo
    @@all << self
  end
end

sandwich_photo = Photo.new
sophie = User.new("Sophie")
sandwich_photo.user = sophie
p sandwich_photo.user.name
# => "Sophie"
p sophie.photos
# => [#<Photo:0x00007fae2880b370>]


p sandwich_photo.comments
# => []

p sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
p sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

p Comment.all
#=> [#<Comment:0x00007fae28043700>]
