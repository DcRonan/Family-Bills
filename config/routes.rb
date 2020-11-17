Rails.application.routes.draw do
  resources :groups
  resources :transactions
  resources :home
  get '/external_transactions', to: 'transactions#external_transactions'
  devise_for :users
  root 'home#index'
end
