Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  devise_for :pokemons
  resources :pokemons
  
  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'pokemons#damage'

  get 'pokemons/new', to: 'pokemons#new'
  post 'pokemons', to: "pokemons#create"
end
