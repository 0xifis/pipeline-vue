Rails.application.routes.draw do
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
