VegasLines::Application.routes.draw do
  devise_for :users do
    get "/", :to => "devise/sessions#new"
  end
  
  resources :users, :only => :show
  resources :years do
    resources :weeks
  end
  
  root :to => "devise/sessions#new"
end
