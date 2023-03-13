Rails.application.routes.draw do
  get 'home/inicio'
  get '/usuarios', to: 'usuarios#index'
  get '/nuevo', to: 'usuarios#new'
  post '/usuarios', to: 'usuarios#create'
  get '/usuario/:id', to: 'usuarios#show', as: 'usuario'
  get '/usuario/:id/edit', to: 'usuarios#edit', as: 'editar_usuario'
  patch '/usuario/:id', to: 'usuarios#update'
  put '/usuario/:id', to: 'usuarios#update'
  delete '/usuario/:id', to: 'usuarios#destroy', as: 'eliminar'


  root 'home#inicio'
  #resources :usuarios
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
