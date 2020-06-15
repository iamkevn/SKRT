Rails.application.routes.draw do
  # get 'rides/index'
  # get 'rides/new'
  # get 'rides/create'
  # get 'rides/show'
  # get 'rides/edit'
  # get 'rides/update'
  # get 'rides/destroy'
  # get 'drivers/show'
  # get 'passengersindex'
  # get 'passengers/new'
  # get 'passengers/create'
  # get 'passengers/show'
  # get 'passengers/edit'
  # get 'passengers/update'
  # get 'passengers/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :passengers, only: [:new, :create, :show, :edit, :update, :destroy]
  resources :rides, only: [:index, :new, :create]
end
