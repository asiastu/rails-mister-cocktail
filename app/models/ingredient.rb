class Ingredient < ApplicationRecord
  has_many :doses
  has_may :cocktails, :through => :doses

  validates :name, presence: true, uniqueness: true
end
