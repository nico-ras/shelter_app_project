Rails.application.routes.draw do
  resources :adopters
  resources :suffereded_diseases
  resources :rescued_froms
  resources :animals
  resources :shelters
  resources :diseases
  resources :locations
  resources :medica_histories
  resources :shelters
  resources :veterinaries
  resources :treatments
  resources :procedures
  
  root 'animals#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
