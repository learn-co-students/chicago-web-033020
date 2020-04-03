require_relative 'animal'
require_relative 'cat'
require_relative 'dog'
require_relative 'fish'
require_relative 'owner_etiquette'

al = Fish.new("Albert")

# bex = Cat.new("Bex")

# cato = Dog.new("Cato")

p al.mood

p OwnerEtiquette.class

p Module.class