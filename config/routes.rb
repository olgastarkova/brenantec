Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'accommodation', to: 'pages#accommodation', as: :accommodation
  get 'blue', to: 'pages#blue', as: :blue
  get "dashboard", to: "pages#dashboard"
  get "stylesheet", to: "pages#stylesheet"

  resources :workshops
  resources :sessions
  resources :coaches
  resources :brequests, only: [:new, :create, :index]

  mount Attachinary::Engine => "/attachinary"


end
