Rails.application.routes.draw do
  get '/signup',to:'users#new'
  post 'signup',to:'users#create'
 # get 'static_pages/home'
 # get '/home',to: 'static_pages#home'
  get '/help',to: 'static_pages#help'
	
 # get 'static_pages/help'

  resources :microposts
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'static_pages#home'

end
