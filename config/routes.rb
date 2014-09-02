Rails.application.routes.draw do
  resources :users do
    resources :restaurants, only: [:index]
  end 
end
