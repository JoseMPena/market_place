Rails.application.routes.draw do
  root to: 'react#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :destroy, :update]
    end
  end
end
