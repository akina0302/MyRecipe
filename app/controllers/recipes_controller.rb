class RecipesController < ApplicationController

  def index
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
    
  private 

  def recipe_params
    params.require(:recipe_category_material).permit(:name, :procedure, :url, :category_name, :material_name).merge(user_id: current_user.id)
  end

end
