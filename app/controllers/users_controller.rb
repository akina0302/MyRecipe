class UsersController < ApplicationController
  def show
    @recipe = Recipe.where(user_id: current_user.id).all
    @user = User.find(params[:id])
  end

end
