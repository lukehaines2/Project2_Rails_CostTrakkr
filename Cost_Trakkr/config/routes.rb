Rails.application.routes.draw do

  root 'users#welcome'
  resources :users
  
  resources :events do 
    resources :payments
  end
  
end
