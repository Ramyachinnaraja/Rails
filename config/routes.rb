Rails.application.routes.draw do

  get 'welcome/index'
  get 'books' => 'books#list'
  get 'books/:id' => 'books#show'
  
  resources :articles
 
  root 'welcome#index'

end
