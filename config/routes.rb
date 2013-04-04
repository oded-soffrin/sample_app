SampleApp::Application.routes.draw do

  #session resources
  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  #static pages
  root :to => "static_pages#home"
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  #users resources
  resources :users
  resources :microposts, only: [:create, :destroy]

  get '/signup', to: 'users#new'

end
