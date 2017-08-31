Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'accommodation', to: 'pages#accommodation', as: :accommodation
  get 'blue', to: 'pages#blue', as: :blue

  resources :workshops, only: [ :index, :show ] do
  	resources :sessions, only: [ :index, :show ]
  end

end
