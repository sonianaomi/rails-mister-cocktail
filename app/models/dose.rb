class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  validates_presence_of :cocktail, :ingredient
  validates :cocktail, uniqueness: { scope: :ingredient }
end
