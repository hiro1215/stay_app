Rails.application.routes.draw do
  
  get 'rooms/index'
  get 'search' ,to: 'rooms#search'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    get '/users/sign_in' => 'devise/sessions#new'
    post '/users/sign_in' => 'devise/sessions#create'
  end      
  root to: 'users#index'
  devise_for :users, controllers: {sessions: 'users/sessions'}
  resources :users
  resources :rooms
  post  'rooms/:id' => 'reserves#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
