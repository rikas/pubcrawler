Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  root to: 'pages#home'

  resources :pubs
  resources :favorite_pubs, only: [:create, :destroy]
end
