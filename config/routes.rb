Rails.application.routes.draw do

  root 'home#index'

  get 'session/new'

  get '/about', to: "home#about"
  
  resources :users
  resources :articles do 
    resources :comments, shallow: true, only: [:create, :destroy]
  end

end
