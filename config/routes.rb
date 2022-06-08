Rails.application.routes.draw do
  devise_for :users
  resources :documents
  get 'profile', to: 'pages#profile', as: 'profile'
  root to: 'pages#home'
end
