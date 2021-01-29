Rails.application.routes.draw do

 

#welcome page
  root 'welcome#index'

  resources :articles do
  resources :comments


end
  end
