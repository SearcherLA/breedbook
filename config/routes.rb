Rails.application.routes.draw do
  resources :people
  devise_for :users
  resources :persontypes
  resources :races

  root to: "races#index"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
