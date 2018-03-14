
Rails.application.routes.draw do
	get   '/login', :to => 'sessions#new', :as => :login
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  get 'home/show'

  resources :posts
  resources :users
  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "home#show"
  root "users#index"
  # get'/users/new' => 'users#new'
  # post 'user/create' => 'users#create'
end
