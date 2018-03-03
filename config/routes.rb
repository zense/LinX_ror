Rails.application.routes.draw do
  resources :posts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "users#index"
  get'/users/new' => 'users#new'
  post 'user/create' => 'users#create'
end
