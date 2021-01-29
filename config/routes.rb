Rails.application.routes.draw do

 resources :articles

#welcome page
  root 'welcome#index'

  resources :articles do
  resources :comments


end
  end
