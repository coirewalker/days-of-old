Rails.application.routes.draw do
  get 'articles/edit'

  get 'articles/index'

  get 'articles/new'

  get 'articles/show'

	# get '/users' to 'users#index'
	get 'users/:id', to: 'users#show', as: 'user'
	# delete 'users/:id' to : 'users#destroy' 

  root 'home#index'

  get 'session/new'

  get '/about', to: "home#about"
  
  resources :users
  resources :articles do 
    resources :comments, shallow: true, only: [:create, :destroy]
  end

end
