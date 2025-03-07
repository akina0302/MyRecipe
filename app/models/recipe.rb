class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :recipe_materials
  has_many :materials , through: :recipe_materials
  has_one_attached :image
  
  validates :name , presence: true
  
end
