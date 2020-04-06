require_relative '../config/environment.rb'

soup = Recipe.new("Chicken Noodle Soup")
pizza = Recipe.new("Margherita Pizza")
salad = Recipe.new("Cobb Salad")
muffins = Recipe.new("Blueberry Muffins")

al = User.new("Al")
pat = User.new("Pat")
sandi = User.new("Sandi")
dana = User.new("Dana")

mozz = Ingredient.new("mozzarella")
tomato = Ingredient.new("tomato")
basil = Ingredient.new("basil")
gpc = Ingredient.new("graham cracker pie crust")

pizza.add_ingredients([mozz, tomato, basil, gpc])
p RecipeIngredient.all
puts pizza.ingredients

pat.add_recipe_card(soup, "03/31/20", "5 turnips!")
pat.add_recipe_card(pizza, "03/31/20", "5 turnips!")
pat.add_recipe_card(salad, "03/31/20", "5 turnips!")
sandi.add_recipe_card(pizza, "03/31/20", "5 turnips!")
dana.add_recipe_card(pizza, "03/31/20", "5 turnips!")
dana.add_recipe_card(muffins, "03/31/20", "5 turnips!")
al.add_recipe_card(soup, "04/01/20", "It's so spicy! I love it! 4 plums")

binding.pry
