Rails.application.routes.draw do
  root "static_pages#home"
  resources :users, only: [:new, :create, :show]
  resources :attractions
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/plots', to: 'plots#create'
  get '/plots', to: 'plots#index'
end
