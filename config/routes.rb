Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
end
