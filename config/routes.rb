Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'surfboards/search'
  get 'surfboards/not_found'
  # get 'bookings/requests
  get 'bookings/bookings_requests'
  get 'surfboards/gotcha'
  post 'import_surfboards', to: 'surfboards#import_surfboards', as: 'import_surfboards'

  get :my_booking, to: 'bookings#my_bookings'
  resources :bookings, only: %i[show edit update destroy]

  resources :surfboards do
    resources :bookings, only: %i[new create]
    collection { post :import }
    collection do
      get :my_surfboards
    end
  end
end
