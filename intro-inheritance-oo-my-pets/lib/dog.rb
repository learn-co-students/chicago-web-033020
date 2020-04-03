class Dog < Animal
  # attr_reader :name
  # attr_accessor :mood
  
  # def initialize(name)
  #   @name = name
  #   @mood = 'nervous'
  # end
  def say_animal
    super
    puts "bow bow bow"
  end
end
