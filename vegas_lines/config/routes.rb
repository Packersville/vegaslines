VegasLines::Application.routes.draw do
  devise_for :users do
    get "/", :to => "devise/sessions#new"
  end
  
  resources :users, :only => :show
  resources :years, :only => [:new, :create, :index] do
    resources :weeks, :only => :index
  end
  resources :weeks, :only => :index do
    resources :games
  end
  
  root :to => "devise/sessions#new"
end
