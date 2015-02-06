Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  resources :requests
  resources :notifications
  root 'users#index'
end
