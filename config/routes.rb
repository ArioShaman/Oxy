Rails.application.routes.draw do
  get 'search/index'

  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  resources :articles
  resources :art_tags
  resources :categories
  resources :tags
  resources :categories
  resources :art_tags
  resources :tags
  resources :articles
  root to: "articles#index"
  resources :posts
end
