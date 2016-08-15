Senape::Engine.routes.draw do
  post 'users/registrations', to: 'registrations#create'
  get 'users/confirmations', to: 'confirmations#create'
end
