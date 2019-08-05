Rails.application.routes.draw do

  get 'sections/index'
  get 'sections/show'
  get 'sections/new'
  get 'sections/create'
  get 'sections/edit'
  get 'sections/update'
  get 'sections/delete'
  get 'sections/destroy'
  root 'demo#index'

  resources :subjects do
    member do 
      get :delete
    end
  end

  resources :pages do
    member do 
      get :delete
    end
  end
  
  resources :sections do
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
