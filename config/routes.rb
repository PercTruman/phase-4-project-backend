Rails.application.routes.draw do
  resources :assignments
  resources :students
  resources :teachers, only: [:show]

  get '/me', to: 'teacher#show'
  
end
