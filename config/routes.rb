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
  get '/api/v1/books/:id' => 'books#show'
  get '/api/v1/books' => 'books#index'
end
