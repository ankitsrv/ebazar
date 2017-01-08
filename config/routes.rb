Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'users#index', :as => 'home'
  resources :users
  resources :sessions
  resources :restaurents
  resources :reviews
  match 'login', :to => 'sessions#new', :via => :get
  match 'logout', :to => 'users#index', :via => :get
end
