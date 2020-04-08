require 'sqlite3'
require 'pry'
require_relative 'artist'


db = SQLite3::Database.new('chinook.db')
db.results_as_hash = true
artists_info = db.execute("SELECT * FROM artists;")

p artists_info

artists_info.each do |artist_info|
  p Artist.new(artist_info)
end

def add_artist_row(new_name)
  db.execute("INSERT INTO artists (name) VALUES (#{new_name});")
end