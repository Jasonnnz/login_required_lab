Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :sessions, only: [:create, :destroy, :new]
  # get 'secrets/:id', to: 'secrets#show', as: 'secret'
  # delete 'sessions/:id', to: 'sessions#destroy'

  get 'secrets/new'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secret' => 'secrets#show'
end
