Rails.application.routes.draw do
  get 'search', to: 'search#index'
  get 'search/results', to: 'search#results'
  get 'home/index'
  resources :tools , only: [:destroy, :index, :edit, :update, :show, :new, :create ] do
  post 'add_user', on: :member
  post 'remove_user', on: :member
  end

  resources :users , only: [:destroy, :index, :edit, :update, :show, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"

end
