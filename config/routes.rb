Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :books, only: [:index, :show, :create, :update, :destroy]
    resources :categories, only: [:index]
    resources :carts, only: [:create, :destroy]
  end
end
