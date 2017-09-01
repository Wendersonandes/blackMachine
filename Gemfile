source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.8'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

gem 'active_model_serializers', '~> 0.10.5'

gem 'handlebars_assets', '~> 0.23.2'

#SEO stuff
gem 'meta-tags'

# Design
gem 'bootstrap-sass'
gem 'ionicons-rails'

#Views
gem 'trailblazer-cells'
gem 'cells-erb'
gem 'cells-rails'
#Handle app secrets
gem 'figaro', '~> 1.0.0'

# Authentication
gem 'devise'

# Workers
gem 'sucker_punch', '~> 2.0'

#Upload Handle
gem 'fastimage'
gem 'image_processing'
gem 'mini_magick'
gem 'shrine'
gem 'aws-sdk', '~> 2.1'
gem 'roda'
gem 'remotipart', '~> 1.2'
gem 'jquery-fileupload-rails'


# Email
gem 'gibbon', github: "amro/gibbon"
gem 'sendgrid', '~> 1.2', '>= 1.2.4'
gem 'mail_form', '~> 1.5.0'

group :development do
  # Docs
  gem 'sdoc', require: false    # bundle exec rake doc:rails
  # Errors
	gem 'better_errors'
  # Guard
  gem 'guard-rspec'
end

group :development, :test do
  # Use spring or zeus
  gem 'spring'                  # keep application running in the background
  gem 'spring-commands-rspec'
  # Debugging
  gem 'pry-rails'               # adds rails specific commands to pry
  gem 'pry-byebug'              # add debugging commands to pry
  gem 'pry-stack_explorer'      # navigate call stack
  gem 'awesome_print'           # pretty pring debugging output

  # Testing
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'ffaker'
  gem 'capybara-webkit'

  # Logging
  gem 'quiet_assets'
end
gem "admin", path: "admin"
