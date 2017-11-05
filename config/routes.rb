Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, defaults: {format: JSON} do
  	
  	resources :order, only: [:index, :new, :create, :update,:edit,:delete] do
  		  	resources :item, only: [:index, :create, :update,:edit,:delete]
  		
  		get 'orders/phone_number', to: 'orders/:id'

  	end
  end
end
end