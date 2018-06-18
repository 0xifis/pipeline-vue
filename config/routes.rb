Rails.application.routes.draw do
  devise_for :admins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :cards do 
    member do
      patch :move
    end
  end
  resources :lists do 
    member do
      patch :move
    end
  end
  resources :listings
  devise_for :users

  root to: 'lists#index'
end
