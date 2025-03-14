class RecipesController < ApplicationController

  def index
    @recipe = Recipe.where(user_id: current_user.id).all
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
    @recipe = Recipe.find_by(id: params[:id] , user_id: current_user.id)
  end
    
  private 

  def recipe_params
    params.require(:recipe_category_material).permit(:name, :procedure, :url, :category_name, :material_name, :image).merge(user_id: current_user.id)
  end

end
