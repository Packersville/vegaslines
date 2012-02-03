VegasLines::Application.routes.draw do
  devise_for :users do
    get "/", :to => "devise/sessions#new"
  end
  
  resources :users, :only => :show
  resources :years, :only => [:new, :create, :index] do
    resources :weeks, :only => [:index, :edit, :update]
  end
  
  resources :weeks, :only => [:index, :edit, :update] do
    resources :lines, :only => [:edit, :update]
    resources :offical_lines, :only => [:edit, :update]
  end
  
  root :to => "user#show"
end
