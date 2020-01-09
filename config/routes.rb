Rails.application.routes.draw do
  devise_for :users,
    path: 'api/v1/users/',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'usermodule/sessions',
      registrations: 'usermodule/registrations'
    }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
