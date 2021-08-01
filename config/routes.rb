Rails.application.routes.draw do

  get '/sign_up' => 'users#sign_up'
  get '/login' => 'users#login'

  get '/articles' => 'articles#new'
  get '/articles/:id' => 'articles#show'

  get 'books' => 'books#list'
  get 'books/:id' => 'books#show'
  get 'welcome/index'

  
  resources :articles do
    resources :comments
  end

  post '/authenticate' => 'users#authenticate'
  resources :users do 
  end

  root 'welcome#index'
end

