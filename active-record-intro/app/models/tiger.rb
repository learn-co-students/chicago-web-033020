class Tiger < ActiveRecord::Base
  belongs_to :oasis
  # attr_accessor :name, :age, :breed

  # def self.all
  #   # Going to database table tigers, getting hashes, turning to Ruby objects
  # end

  # def initialize(args = {})
  #   self.name = args[:name]
  #   self.name = args[:age]
  #   self.name = args[:breed]
  #   self.oasis_id = args[:oasis_id]
  # end

  # def save
  #   # db execute INSERT INTO if no id present
  #   # else execute UPDATE tigers WHERE id = self.id
  # end

  # def update(args)
  #   self.name = args[:name]
  #   self.name = args[:age]
  #   self.name = args[:breed]
  #   self.oasis_id = args[:oasis_id]

  #   self.save
  # end
end