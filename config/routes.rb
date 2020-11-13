Rails.application.routes.draw do
  resources :groups
  resources :transactions
  resources :home
  devise_for :users
  root 'home#index'
end
