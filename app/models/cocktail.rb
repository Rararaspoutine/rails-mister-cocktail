class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true

  # before_destroy :check
  # def check
  #   return self.ingredients.still_there.empty?
  # end
end
