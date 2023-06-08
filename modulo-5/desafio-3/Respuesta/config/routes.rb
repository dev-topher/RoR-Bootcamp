Rails.application.routes.draw do
  
  resources :movies
  resources :series
  resources :documentary_films

  root "home#index"
  get 'documentary_films/index'
  post 'documentary_films/create'
  get 'documentary_films/new'
  get 'series/index' 
  post 'series/create'
  get 'series/new'
  get 'movies/index' 
  post 'movies/create'
  get 'movies/new'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
