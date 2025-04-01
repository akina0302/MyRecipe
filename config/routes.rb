Rails.application.routes.draw do
  devise_for :users
  root to:'recipes#index'
  resources :users, only: :show
  resources :recipes
  resources :cooking_dates, only: :create 
end

