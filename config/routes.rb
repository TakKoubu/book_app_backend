Rails.application.routes.draw do
  get 'order_details/create'
  devise_for :users

  namespace :api do
    mount_devise_token_auth_for 'User', at: 'auth'
    resources :books, only: [:index, :show, :create, :update, :destroy]
    resources :categories, only: [:index]
    resources :carts, only: [:index, :create, :update, :destroy]
    resources :orders, only: [:create]
    resources :order_details, only: [:create]
  end
end
