Rails.application.routes.draw do

  root 'welcome#index'

  resources :articles do
  resources :comments

get 'signup', to: 'users#new'
resources :users, except: [:new]

get 'login', to: 'sessions#new'
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'
end 
  end
