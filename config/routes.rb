HealthTracker::Application.routes.draw do
  devise_for :users
  resources :home, :only => [:index]
  resources :meals

  root to: 'home#index'
end
