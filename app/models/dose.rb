class Dose < ApplicationRecord
  validates :ingredient, presence: true, uniqueness: { scope: :cocktail, message: "ingredient already listed for this cocktail" }
  validates :cocktail, presence: true
  validates :description, presence: true

  belongs_to :ingredient
  belongs_to :cocktail
end
