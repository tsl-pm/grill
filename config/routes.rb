Grill::Application.routes.draw do

  get "/login" => 'sessions#new', as: 'login'
  get '/logout' => 'sessions#destroy', as: 'logout'
  
  post "/sessions" => 'sessions#create'

  resources :users

  resources :items

  root to: 'pages#home'
  
  get '/mockup/home' => 'mockup#home'
  
  get '/help' => 'mockup#help'
  get "/location" => 'mockup#location', as: 'location'
  get "/menu" => 'pages#menu', as: 'menu'
  get "/mockup/menu" => 'mockup#menu'
  get "/orders/new" => 'mockup#ordering', as: 'new_order'
  get "/reservations/new" => 'mockup#reservations', as: 'new_reservation'
end
