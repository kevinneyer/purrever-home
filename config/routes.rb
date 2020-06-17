Rails.application.routes.draw do
  resources :listings

  resources :adoption_centers
  resources :users 
  resources :cats, only: [:index, :new, :create, :edit, :update]

  get '/', to: 'application#welcome', as: "home"
  get '/transition', to: 'flow#transition', as: "flow"
  get '/success', to: 'flow#success', as: "success"
  get '/sessions/new', to: 'sessions#new', as: "new_login"
  post '/sessions', to: 'sessions#create', as: "login"
  get "signup", to: "users#new", as: "signup"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
