require 'rest-client'
require 'json'
require 'pry'
require_relative 'book'

puts "Welcome to BookWurm! Please enter a search term:"
search_term = gets.chomp

search_for_url = search_term.gsub(' ', '+')

url = "https://www.googleapis.com/books/v1/volumes?q=#{search_for_url}"

response = RestClient.get(url)

string_from_api = response.body

hash_from_internet = JSON.parse(string_from_api)

# Book.new({
#   title: "Test Book", 
#   authors: "John Doe, Jane Sample", 
#   snippet: "A fine book, for a test"
# })

books = hash_from_internet["items"].map do |book_info|
  my_title = book_info["volumeInfo"]["title"]
  if book_info["volumeInfo"]["authors"]
    my_authors = book_info["volumeInfo"]["authors"].join(", ")
  else
    my_authors = ""
  end
  my_snippet = book_info["volumeInfo"]["description"]

  book_hash = { title: my_title, authors: my_authors, snippet: my_snippet }

  Book.new(book_hash)
end

binding.pry


# CommandLineInterface.start!