Rails.application.routes.draw do

  get 'welcome/index'
  get 'books' => 'books#list'
  get 'books/:id' => 'books#show'
  
  resources :articles do

    resources :comments  
      
  end
 
  root 'welcome#index'

end
