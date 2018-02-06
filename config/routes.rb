Rails.application.routes.draw do

  get "users/login", as: "login"
  post "users/login_validation", as: "login_validation"
  get "users/logout", as: "logout"
  
  resources :concerts
  resources :users
  resources :attendances

  root "concerts#index"
end
