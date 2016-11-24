class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, uniqueness: { scope: [:cocktail, :ingredient], message: "is unique for a given cocktail/ingredient couple" }
end
