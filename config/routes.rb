Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'pages#home'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show] do
    resources :cars, only: [:new, :create]
  end
  resources :cars, only: [:index, :show] do
    resources :reservations, only: [:create, :edit]

  end
  resources :reservations, only: [:index, :show]
  patch "reject/cars/:id/reservations/:id", to: "reservations#reject", as: "reject"
  patch "approve/cars/:id/reservations/:id", to: "reservations#approve", as: "approve"
  patch "cancel/cars/:id/reservations/:id", to: "reservations#cancel", as: "cancel"

end
