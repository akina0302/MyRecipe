class CookingDatesController < ApplicationController
   
  def create
    @cooking_date = CookingDate.new(cooking_date_params)
    if @cooking_date.save
      redirect_to root_path ,notice:"献立を登録しました"
    else
      render root_path
    end
  end

  privete
  
  def cooking_date
    params.require(:cooking_date).permit(:start_date).merge(:recipe_id)

  end


end
