class Book
  attr_accessor :title, :authors, :snippet
  def initialize(book_info)
    @title = book_info[:title]
    @authors = book_info[:authors]
    @snippet = book_info[:snippet]
  end
end