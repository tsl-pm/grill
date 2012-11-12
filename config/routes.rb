Grill::Application.routes.draw do

  root to: 'mockup#home'
  
  get '/help' => 'mockup#help'
  get "/location" => 'mockup#location', as: 'location'
  get "/menu" => 'mockup#menu', as: 'menu'
  get "/orders/new" => 'mockup#ordering', as: 'new_order'
  get "/reservations/new" => 'mockup#reservations', as: 'new_reservation'
end
