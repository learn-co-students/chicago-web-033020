require_relative 'soakable'

class Fish < Animal
  include Soakable

  def initialize(name)
    super
    @mood = "relaxed"
    @underwater = true
  end

  def say_animal
    super
    puts "blub blub blub"
  end
end

