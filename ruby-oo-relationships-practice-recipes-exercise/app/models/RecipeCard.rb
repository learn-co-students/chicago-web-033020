p "in RecipeCard"

class RecipeCard
  attr_reader :recipe, :user, :date, :rating

  @@all = []

  def self.all
    @@all
  end

  def initialize(recipe, user, date, rating)
    @recipe = recipe
    @user = user
    @date = date
    @rating = rating
    @@all << self
  end
end