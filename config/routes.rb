Rails.application.routes.draw do
  resources :users
  resources :sessions
  root 'application#index'
end
