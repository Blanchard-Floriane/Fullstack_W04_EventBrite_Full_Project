Rails.application.routes.draw do
  resources :events
  devise_for :users
  
  get "up" => "rails/health#show", as: :rails_health_check


end
