Rails.application.routes.draw do


  resources :bookings, only: [:index, :show]
  resources :pets, only: [:index, :update, :destroy, :create]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  post'/signup', to: 'users#signup'
  # get `/#{User.first_name}`, to: 'users#show'
  get '/user', to: 'users#show'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
  get '/lender' , to: 'users#lender_profile'

  get '/user_profile', to: 'users#user_profile'

  get'/user_image', to: 'users#user_image'
  
end
