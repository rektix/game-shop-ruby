Rails.application.routes.draw do
  resources :configurations
  resources :comments
  resources :orders
  resources :games
  resources :gpus
  resources :cpus
  resources :genres
  resources :studios
  resources :articles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
