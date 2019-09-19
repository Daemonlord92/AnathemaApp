Rails.application.routes.draw do
  resources :guild_fourms
  root to: 'guild_fourms#index'
end
