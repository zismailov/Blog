Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  namespace :admin do
    resources :categories, only: [:index, :create, :destroy]
    resources :users, only: [:index, :new, :create, :show, :destroy]
  end
  root to: 'posts#index'
  devise_for :users
end
