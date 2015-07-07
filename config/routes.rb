Rails.application.routes.draw do
 resources :hikers
 resources :items
 resources :recommends
 root 'items#index'
    
end
