Rails.application.routes.draw do
  resources :activities
  resources :timeslots
  resources :trips
  resources :users, only: [:create, :show, :index] do
    resources :trips, only: [:create, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
