Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to:'login#login'
  post '/login', to:'login#loginp'
  get '/signup', to:'login#signup'
  post '/signup', to:'login#signupp'

  get '/', to:'index#index'
end
