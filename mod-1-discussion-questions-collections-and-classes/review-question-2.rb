# QUESTION 2

# Finish the implementation of the Car class so it has the functionality described below

class Car
  attr_reader :make, :model

  @@all = []

  def self.all
    @@all
  end

  # If no argument is give, an empty hash will be used instead
  def initialize(car_info = {})
    @make = car_info[:make]
    @model = car_info[:model]
  end

  def self.drive
    "VROOOOOOOOOOOOM!"
  end


end
# Refactored all .new calls to take in a hash, to tackle the bonus
volvo_lightning = Car.new({ make: "Volvo", model: "Lightning" })
yugo = Car.new({ make: "Zastava", model: "Yugo" })
# Hash brackets are optional when passing in keys/value pairs as arguments 
lada = Car.new(make: "AvtoVAZ", model: "Lada")

p volvo_lightning.make
#=> "Volvo"
p volvo_lightning.model
#=> "Lightning"

p Car.drive
# => "VROOOOOOOOOOOOM!"

p Car.all
#=> [#<Car:0x00007fae28930f20>, #<Car:0x00007fae28923370>, #<Car:0x00007fae2891ae78>]

# BONUS:

merkur_scorpio = Car.new(make: "Merkur", model: "Scorpio")

p merkur_scorpio.make
#=> "Merkur"
p merkur_scorpio.model
#=> "Scorpio"
