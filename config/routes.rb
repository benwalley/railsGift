Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'


  resources :users
  resources :gifts
  resources :comments

  get 'welcome', to: 'users#welcome'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  post 'give', to: 'gifts#give'

  post 'noGive', to: 'gifts#noGive'


  delete 'destroy', to: 'users#destroy'

  delete "gift_destroy", to: 'gifts#destroy'

  get 'all', to: 'users#list'
end
