class Animal
  attr_reader :name
  attr_accessor :mood
  
  def initialize(name)
    @name = name
    @mood = 'nervous'
  end

  def say_animal
    puts "I'm an animal and I say:"
  end

  def my_name
    puts "my name is #{self.name}"
  end
end
