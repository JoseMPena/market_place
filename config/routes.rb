require 'api_constraints'
Rails.application.routes.draw do
  namespace :api, defaults: { format: :json }, path: '/' do
    scope module: :v1,
    constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, only: [:index, :show, :create, :update, :destroy]
    end
    devise_for :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
