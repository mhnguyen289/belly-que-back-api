Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: JSON} do
  		resources :orders, only: [:index, :new, :create, :update,:edit,:delete] do
  			
  		  	resources :items, only: [:create, :update,:edit,:delete]
			end
			
			resources :items, only: [:index]
  		get 'orders/phone_number', to: 'orders#:id'
  	end

end