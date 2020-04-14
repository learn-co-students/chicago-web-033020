class RamenDish < ActiveRecord::Base
  has_many :meals
  has_many :diners, through: :meals, source: :bear_cat

  def to_s
    "#{self.id}: #{self.title}"
  end
end