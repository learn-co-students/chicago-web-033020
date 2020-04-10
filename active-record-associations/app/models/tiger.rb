class Tiger < ActiveRecord::Base
  has_many :tiger_roars
  # Has Many Assumptions
  # - There is a class or a table called TigerRoar or tiger_roars (matches argument name)
  # - There is a foreign key on that table named based on THIS class's name (tiger_id)
  has_many :roars, through: :tiger_roars


  # def tiger_roars
  #   TigerRoar.where(tiger_id: self.id)
  # end
end