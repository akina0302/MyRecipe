class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :material 
  has_one_attached :image
end
