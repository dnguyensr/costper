Rails.application.routes.draw do
  get 'users/:id' => 'users#show', as: :user

  resources :items
  resources :shopping_lists
  resources :stores
  devise_for :users
  root 'pages#index'
  put "toggleadmin/:id" => 'pages#toggleadmin', :as => "toggleadmin"
  put "toggleapproved/:id" => 'pages#toggleapproved', :as => "toggleapproved"
  PagesController.action_methods.each do |action|
      get "/#{action}", to: "pages##{action}", as: "#{action}_page"
  end
end
