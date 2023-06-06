Rails.application.routes.draw do
  resources :users
  root 'products#index'
  post "/create", to: "products#create"
  get "/products/:id", to: "products#show"
  patch "/products/:id", to: "products#update"

  
  resources :categories, only: [:index, :show, :create, :destroyrai ]
  resources :products, only: [:index, :show, :create, :update, :destroy]



end
