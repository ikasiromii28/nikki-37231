Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root to: 'posts#index'
  resources :users, only: [:show]
  resources :relationships, only: [:create, :destroy]
end
