require 'api_constraints'
Rails.application.routes.draw do
  namespace :api, defaults: { format: :json }, path: '/'  do
    scope module: :v1,
               constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, only: [:index, :show, :create, :update, :destroy]
    end
  end
  devise_for :users
  root to: "react#start"
end
