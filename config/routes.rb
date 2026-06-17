Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # root "articles#index"
  root to: "customers#index"

  # Added a route for the customers index page
  get "/customers", to: "customers#index"

  # Added a custom route for the alphabetized customers page
  get "/customers/alphabetized", to: "customers#alphabetized"

  # Added a custom route for the customers missing email page
  get "/customers/missing_email", to: "customers#missing_email"

end
