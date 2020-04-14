class CommandInterface
  def handle_bear_cat_selection

    puts BearCat.all
    puts "please enter a name to see details:"
    selected_name = gets.chomp
    found_bear_cat = BearCat.find_by(name: selected_name)
    puts found_bear_cat.detail_view

  end

  def user_input_from_options
    puts "Press 1 to view a bear from a list, or 2 to create a meal...or type 'exit' to quit"
    gets.chomp
  end

  def wait_for_enter_press
    puts "All done! Press Enter to Continue"
    gets.chomp
  end

  def create_meal
    # meal is the join, so we need two things to join!
    # user selects "themselves" from bearcats
    puts "Which BearCat is ordering? Please type your name:"
    puts BearCat.all
    bear_cat_name = gets.chomp
    found_bear_cat = BearCat.find_by(name: bear_cat_name)
    
    # user selects from a list of ramen dishes
    puts "What are you hungry for? Please select an id:"
    puts RamenDish.all

    selected_dish_id = gets.chomp.to_i
    # Then the bearcat creates a meal with that ramen dish
    # Meal.create(bear_cat_id: found_bear_cat.id, ramen_dish_id: selected_dish_id)

    # found_bear_cat.eaten_meals.create(ramen_dish_id: selected_dish_id)

    # dish_instance_from_db = RamenDish.find(selected_dish_id)
    # found_bear_cat.ramen_dishes << dish_instance_from_db

    found_bear_cat.create_meal_with_dish_id(selected_dish_id)
    puts Meal.all
  end
end