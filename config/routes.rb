Rails.application.routes.draw do
  get 'product/index'

  get 'product/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root 'pages#index'

  	match ':controller(/:action(/:id))', :via => :get
  	match ':controller(/:action(/:id))', :via => :post
end
