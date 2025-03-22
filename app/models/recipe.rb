class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :material 
  has_one_attached :image
  has_many :recipe_cookingdates
  has_many :cooking_dates, through: :recipe_cookingdates
end
