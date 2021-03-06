Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: 'json'} do
      resources :users, only: [:index]
      resources :cars, only: [:index, :update]
      resources :reservations, only: [:index]
      post 'reservations/add', to: 'reservations#create', as: 'reservations_add'
      post 'cars/add', to: 'cars#create', as: 'cars_add'
      get '/cars/:id', to: 'cars#show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
