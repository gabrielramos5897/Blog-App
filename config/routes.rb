Rails.application.routes.draw do
  	

  	#root of the website. This route is for the root.
	root 'posts#index', as: 'home'


	#adds a route, this routes the the about page. This is a normal route
	get 'about' => 'pages#about'

	resources :posts do
		resources :comments
	end





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
