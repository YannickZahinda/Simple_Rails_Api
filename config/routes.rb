Rails.application.routes.draw do
  namespace :api do
    #adding api version
    namespace :v1 do
      resources :yanns do
        resources :members
      end
    end
    namespace :v2 do
      resources :members
      resources :yanns
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
