Rails.application.routes.draw do
  root "pages#home"
  get "why", to: "pages#why"
  get "how_we_work", to: "pages#how_we_work"
  get "location", to: "pages#location"
  # get "apply", to: "apply#index"
  # post "apply", to: "apply#index"
  # post "apply_create", to: "apply#create"
  # get "apply/new", to: "apply#new"
  # post "apply/new", to: "apply#new"

  resources :applies
  # get "apply_new", to: "apply#create"
  # get "apply/:id", to: "apply#show", as: :applies

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
