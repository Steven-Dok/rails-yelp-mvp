Rails.application.routes.draw do
  resources :restaurants, only: [:create, :new, :show, :index]
  get 'up' => 'rails/health#show', as: :rails_health_check
end
