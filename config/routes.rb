Rails.application.routes.draw do
  # namespace :api do
      resources :assignments
      resources :students
      resources :teachers, only: [:index]

      post '/login', to: 'sessions#create'
      get '/me', to: 'teachers#me'
      post '/signup', to: 'teachers#create'
      delete '/logout', to: 'sessions#destroy'
      get '/teachers/:teacher_id/students', to: 'students#index'
      get '/teachers/:teacher_id/assignments', to: 'assignments#index'
      
  # end

  # get "*path", to: "fallback#index", constraints: ->(req) {!req.xhr? && req.format.html?}
end
