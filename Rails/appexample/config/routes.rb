Rails.application.routes.draw do
  root 'welcome#index'
  resources :customers

  get 'inicio' => 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
