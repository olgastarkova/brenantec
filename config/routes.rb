Rails.application.routes.draw do
  get 'sessions/index'

  get 'sessions/show'

  get 'workshops/index'

  get 'workshops/show'

  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'accommodation', to: 'pages#accommodation', as: :accommodation
  get 'blue', to: 'pages#blue', as: :blue
  get "dashboard", to: "pages#dashboard"

  resources :workshops
  resources :sessions
  resources :coaches

  mount Attachinary::Engine => "/attachinary"


end
