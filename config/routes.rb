
  Rails.application.routes.draw do

  resources :articles

  root 'welcome#index'

  resources :articles do
    resources :comments #make comments on the article

  end
end
