class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates :ingredient_id, uniqueness: true
  validates :ingredient_id, uniqueness: { scope: :ingredient_id }
end
