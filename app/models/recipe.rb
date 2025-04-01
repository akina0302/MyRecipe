class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :material 
  has_one_attached :image
  has_many :recipe_cookingdates , dependent: :destroy
  has_many :cooking_dates, through: :recipe_cookingdates 

  after_destroy :destroy_unused_material

  private 

  def destroy_unused_material
    material.destroy if material.recipes.empty? 
    category.destroy if category.recipes.empty?
  end

end
