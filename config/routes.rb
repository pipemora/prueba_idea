Rails.application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }	
  

  resources :todo_lists do
    resources :todo_items do
    	member do
    		patch :complete
    	end
    end
  end

  root "todo_lists#index"

end
