class Cat < ApplicationRecord
  has_many :yards

  validates_presence_of :name, :claw_count, :coarseness
  validates_uniqueness_of :name, case_sensitive: false
  validates_numericality_of :claw_count, greater_than: 0
  validates_format_of :name, { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters, do not let the humans and their IOT tech win" }
  validates_uniqueness_of :claw_count, scope: :coarseness

  validate :no_seven_clawed_a_named_cats

  def no_seven_clawed_a_named_cats
    if name[0].downcase == "a" && claw_count == 7
      self.errors.add(:name, "cannot start with letter 'A' so long as there are 7 claws on ye")
    end
  end
  
  def list_display
    "#{name} the #{coarseness}"
  end

end
