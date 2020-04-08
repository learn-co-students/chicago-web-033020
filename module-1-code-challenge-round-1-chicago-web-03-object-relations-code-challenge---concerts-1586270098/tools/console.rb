require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jones = Band.new("Chance Jones", "Grand Rapids")
qwel = Band.new("Qwel and Maker", "Chicago")
roots = Band.new("The Roots", "Philadelphia")

plex = Venue.new("The Deltaplex", "Grand Rapids")
box = Venue.new("Music Box Theatre", "Chicago")
aragon = Venue.new("Aragon Ballroom", "Chicago")

fools = Concert.new("04/01/2020", jones, plex)
pats = Concert.new("03/17/2020", qwel, box)
third = Concert.new("05/20/2020", roots, aragon)
fourth = Concert.new("05/21/2020", roots, aragon)
fifth = Concert.new("05/22/2020", qwel, aragon)
sixth = Concert.new("05/22/2020", roots, aragon)
jones.play_in_venue(box, "02/22/22")

puts "*******************************************"
p aragon.concert_on("05/22/2020")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
