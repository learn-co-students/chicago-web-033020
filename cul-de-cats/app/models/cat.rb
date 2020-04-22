class Cat < ActiveRecord::Base
  has_many :yards

  def self.meow_is_real(sound)
    # Return true if the sound contains a meow
    !!sound.match(/me.*ow/i)
  end
end