Rails.application.routes.draw do


  resources :bookings, only: [:index,:update,:destroy,:show]
  resources :pets, only: [:index, :update, :destroy, :create]
  resources :users, only: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  
  post'/signup', to: 'users#signup'
  # get `/#{User.first_name}`, to: 'users#show'
  get '/user', to: 'users#show'
  post '/login', to: 'sessions#login'
  patch '/user/:id' ,to: 'users#update_avatar'
  delete '/logout', to: 'sessions#logout'
  get '/lender' , to: 'users#lender_profile'

  get '/user_profile', to: 'users#user_profile'

  get'/user_image', to: 'users#user_image'


  post'/pet_reviews', to:'pets#pet_reviews'
  delete '/pet_reviews/:id', to: 'pets#delete_pet_review'
  get'/pets/:pet_id/pet_reviews', to: "pets#pet_read"

post '/users_booking/:id', to: 'users#pet_booking_for_user'
patch '/owner_booking/:id/:my_bookings_id',to: 'users#owner_booking_update_for_owners_pets'
  # patch'/settings/:id', to: 'users#update_user_profile'

end
