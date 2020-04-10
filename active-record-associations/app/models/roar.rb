class Roar < ActiveRecord::Base
  has_many :tiger_roars
  has_many :tigers, through: :tiger_roars
end