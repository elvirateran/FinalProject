FinalProject::Application.routes.draw do
  match '/home', :to => 'pages#home'
    match '/profile',   :to => 'pages#profile'
    match '/contacts',    :to => 'pages#contacts'
    match '/calendar', :to => 'pages#calendar'
      match '/discussions',   :to => 'pages#discussions'
     # match '/',    :to => 'pages#about'

     root :to => "pages#about"

end
