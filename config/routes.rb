Rails.application.routes.draw do
  get '/activities/index_museum', to: 'activities#index_museum', as: :index_museum
  post '/questions/:id/answer', to: 'questions#answer', as: :answer
  resources :bookings
  resources :activities
  resources :answers
  resources :users
  resources :questions, except: [:create]
  post '/questions/:id/answer', to: 'questions#answer', as: :answer_question
  root to: 'users#main_page'
  get "/profile", to: "users#profile"
  get "/login_form", to: "sessions#login_form"
  post "/login", to: "sessions#login", as: "login"

end
