Rails.application.routes.draw do
  resources :messages
  root to: 'blogs#index'
  resources :blogs
  resources :posts
  resources :tasks
  resources :comments, only: %i[create destroy]
end
