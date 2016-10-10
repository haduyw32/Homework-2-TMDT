Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'index#index'
  get '/login', to: 'login#login'
  get '/signup', to: 'login#signup'
  post '/login', to: 'login#loginp'
  post '/signup', to: 'login#signupp'
  post '/searchFriend', to: "index#searchF"
  post '/saveFriend', to "index#saveF"
end
