
class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, :cocktail_id, :ingredient_id, presence: true, uniqueness: { scope: [:cocktail_id, :ingredient_id] }
end
