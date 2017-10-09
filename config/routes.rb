Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'accommodation', to: 'pages#accommodation', as: :accommodation
  get 'blue', to: 'pages#blue', as: :blue
  get 'dashboard', to: "pages#dashboard"
  get 'stylesheet', to: "pages#stylesheet"

  resources :workshops do
    collection do
      get 'tailor_made', to: "workshops#tailor_made"
      get 'agenda', to: "workshops#agenda"
    end

    resources :brequests, only: [:new, :create]
  end
  resources :programsteps
  resources :sessions
  resources :coaches
  resources :brequests

  mount Attachinary::Engine => "/attachinary"


end
