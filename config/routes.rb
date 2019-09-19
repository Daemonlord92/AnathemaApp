Rails.application.routes.draw do
  devise_for :users
  resources :guild_fourms
  root to: 'guild_fourms#index'
end
