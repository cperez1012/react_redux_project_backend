Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users do
        resources :lists, only: [:index] do
          resources :fighters, only: [:index, :create]
        end
      end
    end
  end
end
