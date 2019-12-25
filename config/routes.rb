Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :leads, only: [:create, :update]
      resources :calls, only: [:create, :update]
      resources :appointments, only: [:create, :update]

      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#auto_login"
    end
  end
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html