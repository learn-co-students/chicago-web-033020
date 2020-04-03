## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
p pokemon[0][:abilities][0][:ability][:url]
# How would you return the first pokemon with base experience over 40?
found_pokemon = pokemon.find do |poke_hash|
  poke_hash[:base_experience] > 40
end
p found_pokemon
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
found_pokemons = pokemon.select do |poke_hash|
  poke_hash[:base_experience] > 40
end
p found_pokemons
# How would you return an array of all of the pokemon's names?
names = pokemon.map { |poke| poke[:name] }
p names
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
p pokemon.any? do |poke|
  poke[:weight] > 60
end