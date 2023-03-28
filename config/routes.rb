Rails.application.routes.draw do


  resources :bookings, only: [:index, :show,:create,:update,:destroy]
  resources :pets, only: [:index, :update, :destroy, :create]
  resources :users, only: [:update]
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


  post'/pet_reviews', to:'pets#pet_reviews'
  delete '/pet_reviews/:id', to: 'pets#delete_pet_review'
  get'/pets/:pet_id/pet_reviews', to: "pets#pet_read"

end
