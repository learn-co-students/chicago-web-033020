class Artist
  attr_accessor :name
  attr_reader :id

  def initialize(args_hash)
    @id = args_hash["id"]
    @name = args_hash["name"]
  end
end