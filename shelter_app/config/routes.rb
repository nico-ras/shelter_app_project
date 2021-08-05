Rails.application.routes.draw do
  
  
  
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :homes
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

  
  root 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
