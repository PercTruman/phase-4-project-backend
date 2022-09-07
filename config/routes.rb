Rails.application.routes.draw do
  resources :assignments
  resources :students
  resources :teachers, only: [:index, :create, :show]

  get '/login', to: 'teacher#show'

  
end
