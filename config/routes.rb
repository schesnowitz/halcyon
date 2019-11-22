Rails.application.routes.draw do
  
  resources :drivers do
    resources :driver_statements 
  end
  resources :customers
  resources :trips do
    resources :pick_drops
  end
  root to: 'pages#home' 

  
get 'driver_trips/:id', to: 'drivers#trips'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
