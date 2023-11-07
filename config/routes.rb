Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  root to: 'events#index'
  resources :attendances
  resources :events
  devise_for :users
end
