Rails.application.routes.draw do

  root to: "spree/admin/orders#index"
  mount Spree::Core::Engine, :at => '/'

  devise_for :users do
    get '/login', :to => "devise/sessions#new"
    delete '/logout', :to => "devise/sessions#destroy"
  end
    
end
