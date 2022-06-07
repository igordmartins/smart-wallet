Rails.application.routes.draw do
  devise_for :users
  resources :documents
  root to: 'pages#home'
end
