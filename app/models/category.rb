class Category < ApplicationRecord
  has_many :recipes
  validates :category ,presence: true

end
