Rails.application.routes.draw do
  # namespace :api do
      resources :assignments
      resources :students
      resources :teachers, only: [:index, :create, :show]

      get '/login', to: 'teacher#show'
  # end

  # get "*path", to: "fallback#index", constraints: ->(req) {!req.xhr? && req.format.html?}
end
