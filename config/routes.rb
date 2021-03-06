Rails.application.routes.draw do
  devise_for :users
  resources :documents, except: %i[show edit update]
  get 'profile', to: 'pages#profile', as: 'profile'
  root to: 'pages#home'
end
