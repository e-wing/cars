Rails.application.routes.draw do
  resources :sample_finishes
  resources :finishes
  resources :colors
  resources :cars
  resources :sample_colors
  resources :car_models
   root "cars#index"

  # patch "cars" => "cars#add_colors", as: :add_colors


  match ':controller(/:action(/:p))', :via => [:get, :post]

end
