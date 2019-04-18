Rails.application.routes.draw do
  root to: 'users#main_page'
  get "/profile", to: "users#profile"
  get "/login_form", to: "sessions#login_form"
  post "/login", to: "sessions#login", as: "login"
  get '/users/main_page', to: 'users#main_page', as: :main_page
  get '/activities/index_museum', to: 'activities#index_museum', as: :index_museum
  get '/activities/index_restaurant', to: 'activities#index_restaurant', as: :index_restaurant
  get '/activities/index_concert', to: 'activities#index_concert', as: :index_concert
  get '/activities/index_pub', to: 'activities#index_pub', as: :index_pub
  get '/activities/index_theatre', to: 'activities#index_theatre', as: :index_theatre
  post '/questions/:id/answer', to: 'questions#answer', as: :answer
  get '/activities/random', to: 'activities#random', as: :random_activity
  resources :bookings
  resources :activities
  resources :answers
  resources :users
  resources :questions, except: [:create]
  post '/questions/:id/answer', to: 'questions#answer', as: :answer_question
  delete "/logout", to: "sessions#logout"

end
