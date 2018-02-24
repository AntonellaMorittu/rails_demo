Rails.application.routes.draw do
  get 'articles/index'
  root controller: :articles, action: :index
  resources :articles, except: [:destroy]
  resources :comments
end
