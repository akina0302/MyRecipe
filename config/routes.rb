Rails.application.routes.draw do
  devise_for :users
  root to:'recipes#index'
  resources :users, only: :show
  resources :recipes, only: [:index,:new,:create,:show,:edit,:update]
end

