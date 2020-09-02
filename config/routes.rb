Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  resources :messages
  root to: 'blogs#index'
  resources :blogs
  resources :posts
  resources :comments, only: %i[create destroy]
end
