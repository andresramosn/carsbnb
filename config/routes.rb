Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]

end
