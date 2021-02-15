Rails.application.routes.draw do
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  resources :computers
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
  root 'games#index'
end
