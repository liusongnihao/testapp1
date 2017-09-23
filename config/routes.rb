Rails.application.routes.draw do
  devise_for :user_tests
  get 'password_resets/new'

  get 'password_resets/edit'

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
  resources :users do
	member do
		get :following, :followers
	end

  end

  resources :microposts, only: [:create,:destroy]
  resources :users
  resources :account_activations,only: [:edit]
  resources :password_resets, only:[:new,:create,:edit,:update]
  resources :relationships, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    root 'static_pages#home'

end
