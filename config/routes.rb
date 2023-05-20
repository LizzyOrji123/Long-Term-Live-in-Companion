Rails.application.routes.draw do
  root 'pages#home'
  get "why", to: "pages#why"
  get "how_we_work", to: "pages#how_we_work"
  get "location", to: "pages#location"
  get "apply", to: "pages#apply"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
