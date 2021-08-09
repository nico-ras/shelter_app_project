Rails.application.routes.draw do
  
  
  
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  

  resources :homes

  shallow do
    resources :shelters do
      resources :animals do
        resources :adopters
      end  
      resources :veterinaries
    end
    
    

    resources :treatments do
        resources :procedures
    end
    
    

  end 
  
  resources :locations
    
  resources :rescued_froms 
  
  resources :suffereded_diseases 
    
  resources :medical_histories 

  resources :diseases
     
   

  
  root 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
