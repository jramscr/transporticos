Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index]
  resources :requests
  root 'users#index'
end
