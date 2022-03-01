Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               sessions: 'users/sessions',
               registrations: 'users/registrations'
             }
  resources :apartments
  resources :leases
  get '/member-data', to: 'members#show'
  get '/users', to: 'users#index'         
end
