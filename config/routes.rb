Rails.application.routes.draw do
  resources :groups
  resources :transactions
  devise_for :users
  root 'home#index'
end
