Rails.application.routes.draw do
  resources :categories, only:[:index, show, :create. :]
  resources :products, only: [:index, :show, :create]

end
