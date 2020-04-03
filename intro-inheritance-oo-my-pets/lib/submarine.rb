class Submarine 
  include Soakable

  attr_reader :serial_num
  
  def initialize(serial_num)
    @underwater = false
    @serial_num = serial_num
  end

end
