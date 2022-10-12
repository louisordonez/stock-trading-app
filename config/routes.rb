Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # resources :users

      post 'auth/sign_in', to: 'authentication#sign_in'
      get 'auth/verify', to: 'authentication#verify_token'
      get 'auth/request', to: 'authentication#request_token'
      get 'auth/check', to: 'authentication#check_role'

      post 'users', to: 'users#create_user'

      get 'users/show', to: 'users#show_current'
      put 'users/update', to: 'users#update_current'
      delete 'users/destroy', to: 'users#destroy_current'

      post 'users/admin', to: 'users#create_admin'
      get 'users/all', to: 'users#index'
      get 'users/show/:id', to: 'users#show_user'
      put 'users/update/:id', to: 'users#update_user'
      delete 'users/destroy/:id', to: 'users#destroy_user'

      get 'stocks/:symbol', to: 'stocks#stock_info'
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
