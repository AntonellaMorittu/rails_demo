Rails.application.routes.draw do

  get 'articles/index'
  root controller: :articles, action: :index
  resources :articles, except: [:destroy] do
  resources :comments, only: :create
  end
end
