Rails.application.routes.draw do
  resources :comments
  resources :posts
  get 'static/home'
  get 'static/index'
  devise_for :users
  root to: 'static#home'
end
