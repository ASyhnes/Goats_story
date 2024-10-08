Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  # root "posts#index"
  resources :goats do
    resources :locations, only: [:new, :create, :show]
  end

  resources :locations, only: [:index, :update, :destroy]

  #route for show pagecontrollerprofil
  get "/profil", to: "pages#profil", as: 'profil'
  # patch "/profil/editprofil", to: "pages#edit_profil", as:'editprofil'

end
