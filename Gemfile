source 'https://rubygems.org'

gem 'rails', '~> 4.2'

# views
gem 'haml-rails'
gem 'simple_form'
gem 'meta-tags', require: 'meta_tags'
gem 'responders', '~> 2.0'

# styles
gem 'bh', github: "buren/bh", branch: "disable-form-builder" # https://github.com/Fullscreen/bh/pull/150
gem 'bootstrap-sass'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

# js
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'modernizr-rails'

# api
gem 'jbuilder', '~> 2.0'
gem 'apitome'
gem 'sdoc', '~> 0.4.0', group: :doc # bundle exec rake doc:rails generates the API under doc/api.

# auth
gem 'devise', '~> 4.1'
gem 'devise_invitable'
gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-instagram'
gem 'omniauth-twitter'
gem 'instagram'
gem 'twitter'

group :test do
  gem 'webmock'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'database_cleaner'
  gem 'spring-commands-rspec'
  gem 'spring-commands-cucumber'
  gem 'quiet_assets'
  gem 'launchy'
  gem 'vcr'
  gem 'faker'
  gem 'dotenv-rails'
  gem 'rdiscount'
  gem 'rspec_api_documentation'
  gem 'jazz_hands', github: 'danrabinowitz/jazz_hands', branch: 'use-newer-version-of-pry'
end

group :development do
  gem 'web-console', '~> 2.0' # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring'
  gem 'happy_seed'
end

# server
gem 'puma'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'pg'
  gem 'rails_12factor'
end
