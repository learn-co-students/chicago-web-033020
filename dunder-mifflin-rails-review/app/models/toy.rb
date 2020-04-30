class Toy < ApplicationRecord
  belongs_to :dog

  def description
    "A #{color.downcase} #{name.downcase}"
  end
end
