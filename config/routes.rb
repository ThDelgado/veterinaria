Rails.application.routes.draw do
  resources :clients
  get 'search/', to: "search#index"
  resources :pet_histories, only: [:index, :new, :create, :destroy, :edit, :show ], only: [:index, :new, :create, :destroy, :edit, :show ]
  resources :pets
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
end
