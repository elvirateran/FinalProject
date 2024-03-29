FinalProject::Application.routes.draw do
  get "sessions/new"
  

    resources :users
    resources :sessions, :only => [:new, :create, :destroy]
    resources :microposts, :only => [:create, :destroy]

    match '/signup',  :to => 'users#new'
    match '/signin',  :to => 'sessions#new'
    match '/signout', :to => 'sessions#destroy'
    

    match '/about', :to => 'pages#about'
    match '/profile',   :to => 'pages#profile'
    match '/contacts',    :to => 'pages#contacts'
    match '/calendar', :to => 'pages#calendar'
    match '/discussions',   :to => 'pages#discussions'
   
    
    root :to => "pages#home"

end
