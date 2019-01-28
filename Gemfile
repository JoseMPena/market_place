source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.7'

# Use Puma as the app server
gem 'puma', '~> 3.0'

# Use Active Model Serializer to comunicate active models thru JSON
gem 'active_model_serializers'

# Use devise for authentication
gem 'devise'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# User React Framework for Front End behaviour
gem 'react-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  # use RSpec to create Test Cases
  gem "rspec-rails"
  # Factory Girl and Ffaker generates test data
  gem "factory_girl_rails"
  gem 'ffaker'
  # Improvind the specs
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  # Use PostgreSQL in production
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
