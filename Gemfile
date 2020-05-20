# frozen_string_literal: true
source 'https://rubygems.org'
ruby '2.3.1'

gem 'airbrake'          # robust exception tracking
gem 'bootstrap-sass'    # SASS port of  Bootstrap 3
gem 'devise'            , '>= 4.4.2' # Flexible authentication solution
gem 'devise_invitable'  , '>= 1.7.0' # Invitation strategy for devise
gem 'google_visualr'    # Google Visualization API
gem 'haml'              # HTML Abstraction Markup Language
gem 'haml-rails'        , '>= 0.9.0' # HAML generators
gem 'immigrant'         , '>= 0.3.5' # Foreign key migration generator
gem 'puma'              # Ruby web server built for concurrency
gem 'smarter_csv'       # importing csv files as array(s) of hashes

gem 'coffee-rails'      , '>= 4.2.2' # CoffeeScript adapter
gem 'pg'                # PostgreSQL
gem 'rails'             , '>= 5.2.4.3' # Ruby on Rails
gem 'sass-rails'        , '>= 5.0.6' # Sass adapter
gem 'uglifier'          # minifies JavaScript, wraps UglifyJS

gem 'jbuilder'          , '>= 2.6.4' # Create JSON structures
gem 'jquery-rails'      , '>= 4.2.2' # jQuery and jQuery-ujs
gem 'turbolinks'        # Faster link following

gem 'rake'              # Make-like program
gem 'rubocop', require: false # Automatic Ruby code style checking

group :development do
  gem 'rails-erd'       , '>= 1.5.0' # Generate an entity-relationship diagram
  gem 'spring'          , '>= 2.0.0' # Preloads your application
end

group :development, :test do
  gem 'pry'                     # IRB alternative and runtime dev console
  gem 'pry-byebug'              # combine pry with byebug
  gem 'rails_best_practices', '>= 1.17.0'
  gem 'rspec-rails'             , '>= 3.5.2' # testing framework
end

group :test do
  gem 'capybara'                        # Integration testing tool
  gem 'cucumber-rails', '>= 1.6.0', require: false # Automated acceptance tests
  gem 'database_cleaner'                # Strategies for cleaning databases
  gem 'factory_girl_rails'              , '>= 4.8.0' # Setup Ruby objects as test data
  gem 'launchy'
  gem 'selenium-webdriver'              # Automated tests of websites
  gem 'shoulda-matchers'                , '>= 3.1.1' # Collection of testing matchers
end

group :production do
  gem 'rails_12factor' # Run Rails the 12factor way
end

group :doc do
  gem 'sdoc' # rdoc generator
end
