class Dog < ApplicationRecord
  has_many :employees
  has_many :toys

  accepts_nested_attributes_for :toys
  validates_presence_of :name
end
