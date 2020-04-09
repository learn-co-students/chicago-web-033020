#!/usr/bin/env ruby
require_relative '../config/environment'

Tweet.all.first.explore_ivars
TweetsApp.new.call
# db = DB[:conn]
# binding.pry
# p DB[:conn].execute("INSERT INTO tweets (message, username) VALUES ('coffee', 'coffee_dad');")
# p DB[:conn].last_insert_row_id
# p DB[:conn].execute("SELECT * FROM tweets;")