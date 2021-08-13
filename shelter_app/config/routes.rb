Rails.application.routes.draw do
  
  
  
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  

  resources :homes

  shallow do
    resources :shelters do
      resources :animals do
        resources :rescued_froms
        resources :adopters
        resources :medical_histories do
          resources :suffereded_diseases do
            resources :treatments do
              resources :procedures
          end
          end
        end
      end  
      resources :veterinaries
      
      
    end
    resources :diseases
    resources :locations
  end 
  
  
    
  
  
   
    
   

  
     
   

  
  root 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
