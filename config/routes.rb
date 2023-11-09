Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  
  root to: 'events#index'
  resources :attendances
  resources :events
  devise_for :users
  resources :users

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
end
