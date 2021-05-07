Rails.application.routes.draw do
  root "sessions#new"

  resources :users
  resources :sessions
  resources :events
  resources :user_events
end
