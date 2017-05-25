Rails.application.routes.draw do
  resources :stores
  devise_for :users
  root 'pages#index'
end
