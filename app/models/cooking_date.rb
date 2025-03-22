class CookingDate < ApplicationRecord
  has_many :recipe_cookingdates
  has_many :recipes, through: :recipe_cookingdates
  belongs_to :user

 
  
end
