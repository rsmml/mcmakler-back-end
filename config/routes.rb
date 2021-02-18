Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  namespace :api do
    namespace :v1 do
      resources :properties
      get :my_properties, to: "properties#my_properties"
    end
  end
end
