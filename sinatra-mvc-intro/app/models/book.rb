class Book < ActiveRecord::Base
  def full_description
    # Multiline summary of all the book info, for easy display
    # use title, author, snippet attributes
  end
end
