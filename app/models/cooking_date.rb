class CookingDate < ApplicationRecord
  has_many :recipes, through: :recipe_cookingdate
end
