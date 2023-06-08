Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index'

  get "/home", to: 'home#index'
  get "/projects", to: 'projects#index'
  get "/contact", to: 'contact#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
