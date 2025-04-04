class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  before_action :recipe_user, only: [:show, :edit, :update, :destroy]


  def index
    @recipe = Recipe.where(user_id: current_user.id).all
    @cooking_dates = CookingDate.where(user_id: current_user.id).includes(:recipes)
  end

  def new
    @recipe_category_material = RecipeCategoryMaterial.new
  end

  def create
    @recipe_category_material = RecipeCategoryMaterial.new(recipe_params)
    if @recipe_category_material.valid?
      @recipe_category_material.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
    @recipe_category_material = RecipeCategoryMaterial.new(@recipe.attributes)
    @recipe_category_material.image = @recipe.image if @recipe.image.attached? # 画像データを引き継ぐ
  end

  def update
    @recipe_category_material = RecipeCategoryMaterial.new(recipe_params)
    #画像を変更しない場合は既存の画像をセットする
    @recipe_category_material.image = if recipe_params[:image].present?
      recipe_params[:image] # 新しい画像をセット
    elsif @recipe.image.attached?
      @recipe.image.blob # 既存の画像をセット
    end

    if @recipe_category_material.valid?
      @recipe_category_material.update(@recipe.id)
      redirect_to root_path
    else
      render :edit,status: :unprocessable_entity
    end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path
  end
    
  private 

  def recipe_params
    params.require(:recipe_category_material).permit(:name, :procedure, :url, :category_name, :material_name, :image).merge(user_id: current_user.id)
  end

  def set_recipe
    @recipe = Recipe.find_by(id: params[:id] )
  end

  def recipe_user
    unless @recipe.user_id == current_user.id
      redirect_to root_path
    end
  end 

end
