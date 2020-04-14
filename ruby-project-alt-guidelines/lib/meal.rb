class Meal < ActiveRecord::Base
  belongs_to :bear_cat
  belongs_to :dish, class_name: :RamenDish, foreign_key: :ramen_dish_id

  def to_s
    "'YUM!' said #{bear_cat.name} as they devoured the yummy #{dish.title}..."
  end
end