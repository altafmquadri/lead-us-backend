Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :leads, only: [:create]
      resources :calls, only: [:create]
    end
  end
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html