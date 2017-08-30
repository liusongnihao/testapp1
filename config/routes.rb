Rails.application.routes.draw do
 # get 'sessions/new'

  get '/signup',to:'users#new'
  post 'signup',to:'users#create'
 # get 'static_pages/home'
 # get '/home',to: 'static_pages#home'
  get '/help',to: 'static_pages#help'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'	

 # get 'static_pages/help'

  resources :microposts
  resources :users
  resources :account_activations,only: [:edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'static_pages#home'

end
