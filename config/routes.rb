Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  root to: "home#index"

  resources :posts, only: [:new, :create,  :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end
