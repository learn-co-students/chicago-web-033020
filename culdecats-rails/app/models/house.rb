class House < ApplicationRecord
  has_many :yards
  has_many :cats, through: :yards

  accepts_nested_attributes_for :yards
  validates_presence_of :name
end
