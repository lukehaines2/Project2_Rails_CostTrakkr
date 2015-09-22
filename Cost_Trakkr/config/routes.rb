Rails.application.routes.draw do

  root 'users#index'
  resources :users
  
  resources :events do 
    resources :payments
  end
  
end
