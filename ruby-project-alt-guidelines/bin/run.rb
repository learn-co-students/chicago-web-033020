require_relative '../config/environment'
require_relative 'command_interface'

ActiveRecord::Base.logger = nil

cli = CommandInterface.new
# User chooses a bearcat from a list and then sees details
# User should be able to exit
# App should keep running until user exits

puts "\e[H\e[2J"
puts "Welcome to BareCaf! The natural ramen cafeteria for BearCats."
puts "-------------------------------------------------------------"

user_input = cli.user_input_from_options

while user_input != "exit"
  puts "\e[H\e[2J"

  if user_input == "1"
    cli.handle_bear_cat_selection
  elsif user_input == "2"
    cli.create_meal
  end
  
  cli.wait_for_enter_press

  puts "\e[H\e[2J"
  user_input = cli.user_input_from_options
end
