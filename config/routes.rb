Rails.application.routes.draw do

  get 'pages/index'
  get 'pages/show'
  get 'pages/new'
  get 'pages/create'
  get 'pages/edit'
  get 'pages/update'
  get 'pages/delete'
  get 'pages/destroy'
  root 'demo#index'

  resources :subjects do
    member do 
      get :delete
    end
  end

  get 'home/about'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'

  # default route 
  # may be deprecated later on
  # get ':controller(/:action(/:id))'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
