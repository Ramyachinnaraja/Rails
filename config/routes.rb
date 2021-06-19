Rails.application.routes.draw do

  get 'sign/signup'
  get 'welcome/index'
  get 'books' => 'books#list'
  get 'books/:id' => 'books#show'
  get '/login' => 'login#login'
  get 'login/index'

  resources :articles do

  resources :comments  
      
  end
  
  root 'welcome#index'

end
