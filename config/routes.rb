Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/show'

  get 'users/edit'

  get 'home/index'

  get 'home/about'


  resources :users
  resources :articles do 
    resources :comments, shallow: true, only: [:create, :destroy]
  end

  

  
end
