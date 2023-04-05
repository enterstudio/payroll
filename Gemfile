# frozen_string_literal: true
source 'https://rubygems.org'
ruby '2.3.1'

gem 'airbrake'          # robust exception tracking
gem 'bootstrap-sass'    , '>= 3.4.0' # SASS port of  Bootstrap 3
gem 'devise'            , '>= 4.7.1' # Flexible authentication solution
gem 'devise_invitable'  # Invitation strategy for devise
gem 'google_visualr'    # Google Visualization API
gem 'haml'              , '>= 5.0.0' # HTML Abstraction Markup Language
gem 'haml-rails'        , '>= 1.0.0' # HAML generators
gem 'immigrant'         # Foreign key migration generator
gem 'puma'              , '>= 4.3.12' # Ruby web server built for concurrency
gem 'smarter_csv'       # importing csv files as array(s) of hashes

gem 'coffee-rails'      , '>= 4.2.2' # CoffeeScript adapter
gem 'pg'                # PostgreSQL
gem 'rails'             , '>= 6.1.7.3' # Ruby on Rails
gem 'sass-rails'        , '>= 6.0.0' # Sass adapter
gem 'uglifier'          # minifies JavaScript, wraps UglifyJS

gem 'jbuilder'          , '>= 2.6.4' # Create JSON structures
gem 'jquery-rails'      , '>= 4.4.0' # jQuery and jQuery-ujs
gem 'turbolinks'        # Faster link following

gem 'rake'              , '>= 12.3.3' # Make-like program
gem 'rubocop', '>= 0.49.0', require: false # Automatic Ruby code style checking

group :development do
  gem 'rails-erd'       # Generate an entity-relationship diagram
  gem 'spring'          # Preloads your application
end

group :development, :test do
  gem 'pry'                     # IRB alternative and runtime dev console
  gem 'pry-byebug'              # combine pry with byebug
  gem 'rails_best_practices'
  gem 'rspec-rails'             # testing framework
end

group :test do
  gem 'capybara'                        # Integration testing tool
  gem 'cucumber-rails', '>= 2.1.0', require: false # Automated acceptance tests
  gem 'database_cleaner'                # Strategies for cleaning databases
  gem 'factory_girl_rails'              # Setup Ruby objects as test data
  gem 'launchy'
  gem 'selenium-webdriver'              # Automated tests of websites
  gem 'shoulda-matchers'                # Collection of testing matchers
end

group :production do
  gem 'rails_12factor' # Run Rails the 12factor way
end

group :doc do
  gem 'sdoc' , '>= 1.0.0' # rdoc generator
end
