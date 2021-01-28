Rails.application.routes.draw do

 resources :articles

  root 'welcome#index'

  resources :articles do
  resources :comments


end
  end
