Rails.application.routes.draw do
  resources :bookings
  resources :activities
  resources :answers
  resources :users
  resources :questions, except: [:create]
  post '/questions/:id/answer', to: 'questions#answer', as: :answer_question
  root to: 'users#new'
end
