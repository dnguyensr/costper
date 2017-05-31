Rails.application.routes.draw do
  resources :items
  resources :shopping_lists
  resources :stores
  devise_for :users
  root 'pages#index'
  PagesController.action_methods.each do |action|
      get "/#{action}", to: "pages##{action}", as: "#{action}_page"
  end
end
