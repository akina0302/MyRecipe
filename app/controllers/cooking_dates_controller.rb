class CookingDatesController < ApplicationController
   
  def create
    @cooking_date = CookingDate.where(user_id: current_user.id).new(cooking_date_params)
    if @cooking_date.save
      redirect_to root_path ,notice:"献立を登録しました"
    else
      redirect_to root_path
    end
  end

  private
  
  def cooking_date_params
    params.require(:cooking_date).permit(:start_time, recipe_ids: [])
  end


end
