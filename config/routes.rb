Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'surfboards/filter_surfboards'
  # get 'bookings/requests
  post 'import_surfboards', to: 'surfboards#import_surfboards', as: 'import_surfboards'
  get 'surfboards/search_surfboard'
  resources :surfboards do
    resources :bookings, only: %i[new create]
    collection { post :import }
    collection do
      get :my_surfboards
    end
  end
  get :my_booking, to: 'bookings#my_bookings'
  resources :bookings, only: %i[show edit update destroy]
end
