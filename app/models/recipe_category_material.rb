class RecipeCategoryMaterial
  include ActiveModel::Model
  attr_accessor :name, :procedure, :url, :user_id, :category_name, :material_name, :image

  with_options presence: true do
   validates :name 
   validates :category_name
   validates :material_name
   validates :user_id
  end

  def save
    #material作成
    material = Material.create(material_name: material_name)
    #category作成
    category = Category.create(category_name: category_name)
    #recipe作成
    Recipe.create(
      name: name,
      procedure: procedure,
      url: url,
      user_id: user_id,
      material_id: material.id,
      category_id: category.id ,
      image: image
      )
  end

 
end

