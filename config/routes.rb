Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy_all'
  get '/' => 'users#new', as: 'user'
  post '/' => 'users#create'
  get '/show' => 'users#show'

end
