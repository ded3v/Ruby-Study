Rails.application.routes.draw do  #Aqui onde tudo começa. É necessário a permissão de uma rota para acesso ao site destino
  #resources :users
  get 'userslist', to: 'users#index'
  post 'create', to: 'users#create'
  get 'new', to: 'users#new'
  get 'edit', to: 'users#edit'
  get 'show', to: 'users#show'
  patch 'update', to: 'users#update'
  delete 'delete', to: 'users#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
