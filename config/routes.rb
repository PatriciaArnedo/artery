Rails.application.routes.draw do
  resources :users
  resources :cart_arts
  resources :carts #, only: [:show, :destory, :new, :create, :delete]
  resources :locations
  resources :artists
  resources :artworks
  post '/sessions', to: 'sessions#create', as: 'sign_in'
  delete '/sessions/logout', to: 'sessions#logout', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'new_sign_in'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
