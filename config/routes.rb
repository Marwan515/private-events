Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: "registrations" }
  resources :events
  resources :attendees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "events#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
