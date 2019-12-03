Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
    root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users, only: [:show] do
      resources :cars, only: [:new, :create] do
        # resources :reservations, only: [:new, :create]
        end
      end
  resources :cars, only: [:index, :show]
end
