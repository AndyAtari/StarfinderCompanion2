Rails.application.routes.draw do

  resources :starships
  
  root 'site#index'
  
  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'

  
  resources :users, only: [:new, :create, :edit, :update]
end
