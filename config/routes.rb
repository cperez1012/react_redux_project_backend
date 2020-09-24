Rails.application.routes.draw do
  post '/api/v1/login', to: 'api/v1/sessions#create'
  get '/api/v1/get_current_user', to: 'api/v1/sessions#get_current_user'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show]
      
      # post '/login', to: 'auth#create'
      # get '/profile', to: 'users#profile' 
      # do
        # resources :lists, only: [:index]
        # resources :fighters, only: [:index, :create]
      # end
    end
  end
end 
