Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'user/new'

  #root 'static_page#home'
  #get '/help', to: 'static_page#help'
  #get '/about', to: 'static_page#about'
  #get '/contact', to: 'static_page#contact'
  #get 'signup', to: 'users#new'
  #ressources :users

  #get '/login', to:'session#new'
  #post '/login', to:'session#create'
  #delete '/logout', to:'session#destroy'

end
