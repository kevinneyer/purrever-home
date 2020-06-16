Rails.application.routes.draw do
  resources :listings

  resources :adoption_centers
  resources :users 
  resources :cats, only: [:index, :new, :create, :edit, :update]

  get '/', to: 'application#welcome', as: "home"
  get '/transition', to: 'flow#transition', as: "flow"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
