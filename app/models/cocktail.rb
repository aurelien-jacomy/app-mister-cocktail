class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy, inverse_of: :cocktail
  has_many :ingredients, through: :doses
  has_many :reviews
  has_one_attached :photo
  accepts_nested_attributes_for :doses
  
	def rating
    sum_ratings = Review.where(cocktail: self).sum(:rating)
    number_of_ratings = Review.where(cocktail: self).count
    if number_of_ratings.zero?
      "No rating yet"
    else
      sum_ratings.fdiv(number_of_ratings).round(1)
    end
  end

end
