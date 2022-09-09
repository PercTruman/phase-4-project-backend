Rails.application.routes.draw do
  # namespace :api do
      resources :assignments
      resources :students
      resources :teachers, only: [:index, :show]

      post '/login', to: 'sessions#create'
      get '/me', to: 'teachers#me'
      post '/signup', to: 'teachers#create'
      delete '/logout', to: 'sessions#destroy'
  # end

  # get "*path", to: "fallback#index", constraints: ->(req) {!req.xhr? && req.format.html?}
end
