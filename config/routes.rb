Rails.application.routes.draw do

  resources :cocktails, only: %i[index show new create] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: %i[destroy]

  # get 'restaurant/new', to: 'restaurant#new'
  # post 'restaurant', to: 'restaurant#create'
  # get 'restaurants', to: 'restaurants#index', as: :restaurants
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant


end
