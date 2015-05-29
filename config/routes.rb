Rails.application.routes.draw do

  root 'home#index'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#destroy'
  
  # get 'articles/edit'
  # get 'articles/index'
  # get 'articles/new'
  # get 'articles/show'

	# get '/users' to 'users#index'
	# get 'users/:id', to: 'users#show', as: 'user'
	# delete 'users/:id' to : 'users#destroy' 
 #  get 'users/new', to: 'users#new', as: 'new_user'
 #  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'


  

  get '/about', to: "home#about"
  
  resources :users
  resources :articles do 
  resources :comments, shallow: true, only: [:create, :destroy]
  end

end
