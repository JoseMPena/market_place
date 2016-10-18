Rails.application.routes.draw do
  require 'api_constraints'

  namespace :api,
  defaults: { format: :json }, constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1,
      constraints: ApiConstraints.new(version: 1, default: true) do
        
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
