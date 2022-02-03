Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create]
  root to: 'posts#index'
end
