Rails.application.routes.draw do
  get 'pokemons/index'
  get 'pokemons/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :pokemons, only: [:index, :show]
  root "pokemons#index"
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end