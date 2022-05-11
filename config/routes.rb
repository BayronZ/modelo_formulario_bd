Rails.application.routes.draw do
  resources :posts
  get 'pages/index'
  root 'pages#index'
  get 'pages/create'
  get '/pages/dashboard'
end