Rails.application.routes.draw do
  
  
  
  
  
  resources :shelters do
    resources :animals
    resources :adopters
    resources :veterinaries
    resources :medical_histories
    resources :diseases
    resources :suffereded_diseases
    resources :treatments
    resources :procedures
    resources :locations
    resources :rescued_froms
  end  
  
  
  
  
  root 'shelters#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
