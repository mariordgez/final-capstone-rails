Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/cars/:id', to: 'cars#show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
