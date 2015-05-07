Rails.application.routes.draw do

root 'home#index'

  get 'session/new'

  get '/about', to: "home#about"
  
  resources :user do
  end

end
