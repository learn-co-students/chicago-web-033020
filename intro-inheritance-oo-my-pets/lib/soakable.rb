module Soakable
  attr_accessor :underwater
  
  def submerge 
    self.underwater = true
  end

  def emerge
    self.underwater = false
  end

end