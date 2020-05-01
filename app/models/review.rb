class Review < ApplicationRecord
  belongs_to :cocktail
  validates :cocktail, presence: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true }
end
