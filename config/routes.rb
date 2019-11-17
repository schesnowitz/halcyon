Rails.application.routes.draw do
  resources :drivers
  resources :customers
  resources :trips do
    resources :pick_drops
  end
  root to: 'pages#home' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
