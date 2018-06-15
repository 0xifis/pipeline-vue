Rails.application.routes.draw do
  resources :cards
  resources :lists
  resources :listings
  devise_for :users

  root to: 'lists#index'
end
