Rails.application.routes.draw do

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root to: "pages#index"
  get 'action', to: 'pages#action'
  get 'adventure', to: 'pages#adventure'
  get 'racing', to: 'pages#racing'
  get 'sports', to: 'pages#sports'
  get 'simulation', to: 'pages#simulation'
  resources :games
  resource :shopping_cart
  

end
