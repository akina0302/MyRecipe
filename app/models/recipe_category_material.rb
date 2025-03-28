class RecipeCategoryMaterial
  include ActiveModel::Model
  attr_accessor  :name, :procedure, :url, :user_id, :category_name, :material_name,:image,:id,:category_id,:material_id,:created_at,:updated_at
    

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

  def update(recipe_id)
    recipe = Recipe.find(recipe_id)


    material = Material.find_or_create_by(material_name: material_name)
    category = Category.find_or_create_by(category_name: category_name)

    if image.nil?
      image = recipe.image.blob if recipe.image.attached?
    end


    recipe.update(
      name: name,
      procedure: procedure,
      url: url,
      user_id: user_id,
      material_id: material.id,
      category_id: category.id,
      # image: image
      )

      # ActiveStorage の画像は別途アタッチする必要がある
       recipe.image.attach(image) if image.present?
    end
end

