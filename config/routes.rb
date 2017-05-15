Rails.application.routes.draw do
  root to: 'pages#home'
  get 'action', to: 'pages#action'
  get 'adventure', to: 'pages#adventure'
  get 'racing', to: 'pages#racing'
  get 'sports', to: 'pages#sports'
  get 'strategy', to: 'pages#strategy'
end
