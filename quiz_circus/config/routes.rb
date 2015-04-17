Rails.application.routes.draw do
  root 'circuses#index'
  resources :circuses do
    resources :entertainers, only: [:new, :create, :edit, :update]
  end
  resources :entertainers, only: [:index, :show, :destroy]
end
