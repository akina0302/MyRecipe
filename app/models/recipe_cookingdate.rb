class RecipeCookingdate < ApplicationRecord
  belongs_to :recipe
  belongs_to :cooking_date
end
