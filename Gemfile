source 'https://rubygems.org'

ruby '2.0.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
# having problems with rails/bootstrap, so forcing versions to match tutorial
gem 'rails', '4.0.0'
gem 'bootstrap-sass', '2.3.2.0'

# Use ActiveModel has_secure_password
# latest version of bcrypt-ruby, 3.1.0, does not work
gem 'bcrypt-ruby', '3.0.1'

group :development do
  gem 'sqlite3'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'factory_girl_rails'
end

# Use posgresql as the database for Active Record
gem 'pg'
# gem 'postgres-pr'     # get access to postgres-specific types

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0.rc1'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'debugger', group: [:development, :test]

# heroku integration gem, fatal to "rails server" in development & test
# see https://devcenter.heroku.com/articles/rails4-getting-started for instructions
gem 'rails_12factor', group: [:production]
