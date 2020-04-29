class Yard < ApplicationRecord
  belongs_to :cat, optional: true
  belongs_to :house
  validates_presence_of :title, :size
  validates_uniqueness_of :title


  def full_info
    "This #{size} - sized yard belonged to the #{house.name} and is now watched by #{cat.name}."
  end
end
