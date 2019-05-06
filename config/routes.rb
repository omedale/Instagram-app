Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  get 'home/index'

  root to: "home#index"
  get 'search' => 'search#index'
  resources :posts, only: [:new, :create,  :show, :destroy]
  resources :users, only: [:show, :edit, :update]
end
