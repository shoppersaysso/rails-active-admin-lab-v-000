Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  resources :artists, only: [:index, :show] 
  resources :songs, only: [:index, :show]

  root to: 'artists#index'
end
