class BearCat < ActiveRecord::Base
  has_many :eaten_meals, class_name: :Meal
  has_many :ramen_dishes, through: :eaten_meals, source: :dish

  def to_s
    "#{id}: #{name}"
  end

  def detail_view
    <<-COOL
      I'm a Bear Cat named #{name}, 
      and my hunger level is a solid #{hunger}!
      Am I growling or is it my dang tum-tum?
      YEESH!
    COOL
  end

  def create_meal_with_dish_id(id)
    self.ramen_dish_ids = ramen_dish_ids << id
  end
end