require 'rubygems'
source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

gem 'bootstrap-sass', '2.1'

# Github markdown
gem 'redcarpet'
# Python syntax highlight lib
gem 'pygmentize'

gem 'mongoid', github: 'mongoid/mongoid'

gem 'devise'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'

  # Better errors
  gem 'binding_of_caller'
  gem 'better_errors'

  # Deployment
  gem 'capistrano', '3.0.1'
  gem 'capistrano-rails', '1.1.0'
  gem 'capistrano-rvm', '0.1.0'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'rspec-nc', '0.0.6'
end

group :production do
  gem 'rails_12factor' # Heroku thingy
end

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
#gem 'jbuilder', '~> 1.0.1'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'
