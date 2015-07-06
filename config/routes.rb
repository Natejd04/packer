Rails.application.routes.draw do
 resources :hikers
 resources :items

 root 'items#index'
end
