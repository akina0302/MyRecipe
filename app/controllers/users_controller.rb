class UsersController < ApplicationController
  def show
    @recipe = Recipe.where(user_id: current_user.id).includes(:image_attachment)
    @user = User.find(params[:id])
  end

end
