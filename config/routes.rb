Rails.application.routes.draw do
  resources :accounts
  resources :messages
  root to: 'blogs#index'
  resources :blogs
  resources :posts
  resources :tasks
  resources :comments, only: %i[create destroy]
  get 'accounts/donwloade/:id', to: "accounts#download", as: "download_icon"
  resources :accounts
end
