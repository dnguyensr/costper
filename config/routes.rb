Rails.application.routes.draw do
  resources :items
  resources :shopping_lists
  resources :stores
  devise_for :users
  root 'pages#index'
end
