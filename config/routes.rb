Rails.application.routes.draw do
  root to: 'static#home'

  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get '/current_user', to: 'current_user#index'

  resources :tracks, only: [:index, :create, :destroy]
end
