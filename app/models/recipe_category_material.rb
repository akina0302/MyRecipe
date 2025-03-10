class RecipeCategoryMaterial
  include ActiveModel::Model
  attr_accessor :name, :procedure, :url, :user_id, :category, :material

  with_options presence: true do
   validates :name 
   validates :category
   validates :material
   validates :user_id
  end

  def save
    #material作成
    material = Material.create(material: self.material)
    #category作成
    category = Category.create(category: self.category)
    #recipe作成
    Recipe.create(
      name: name,
      procedure: procedure,
      url: url,
      user_id: user_id,
      material_id: material.id,
      category_id: category.id    
      )
  end

 
end

