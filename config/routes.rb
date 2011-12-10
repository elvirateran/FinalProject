FinalProject::Application.routes.draw do
    get "users/new"

    match '/signup',  :to => 'users#new'

    match '/home', :to => 'pages#home'
    match '/profile',   :to => 'pages#profile'
    match '/contacts',    :to => 'pages#contacts'
    match '/calendar', :to => 'pages#calendar'
    match '/discussions',   :to => 'pages#discussions'
    

     root :to => "pages#about"

end
