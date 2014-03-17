Scorecard::Application.routes.draw do
	root to: 'high_voltage/pages#show', id: 'home'
	resources :games, only: [:index, :new, :create, :show] do
		resource :substitution, only: [:new, :create]
		resources :players, only: [:new, :create, :destroy]
		resources :at_bats, only: [:new, :create, :show]
	end
end
