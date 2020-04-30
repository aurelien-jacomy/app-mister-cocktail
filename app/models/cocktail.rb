class Cocktail < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :doses, dependent: :destroy, inverse_of: :cocktail
  has_many :ingredients, through: :doses
  has_one_attached :photo
  accepts_nested_attributes_for :doses

  def picture_url
  	return nil
  end
end
