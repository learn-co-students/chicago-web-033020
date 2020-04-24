class Dinosaur < ApplicationRecord
  validates_uniqueness_of :name
  validates_presence_of :height, :name
end
