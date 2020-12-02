Rails.application.routes.draw do
  resources :users
  root "users#index"
  resources :accounts
  resources :messages
  resources :blogs
  resources :posts
  resources :tasks
  resources :comments, only: %i[create destroy]
  get 'accounts/donwloade/:id', to: "accounts#download", as: "download_icon"
  resources :accounts
end
