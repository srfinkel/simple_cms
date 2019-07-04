Rails.application.routes.draw do

  root 'demo#index'
  
  get 'home/about'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'

  # default route 
  # may be deprecated later on
  # get ':controller(/:action(/:id))'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
