Scorecard::Application.routes.draw do
	root to: 'high_voltage/pages#show', id: 'home'
	resources :games, only: [:index, :new, :create, :show] do
		resources :players, only: [:new, :create]
	end
end
