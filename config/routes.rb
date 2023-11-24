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

  resource :tracks, only: %i[index create destroy]
end
