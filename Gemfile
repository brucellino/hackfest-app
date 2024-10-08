source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'awesome_print', '1.9.2'
gem 'font-awesome-rails', '>= 4.7.0.4'
gem 'foundation-icons-sass-rails', '>= 3.0.0'
gem 'foundation-rails', '>= 6.4.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 7.0', '>= 7.0.6'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 5.0.7'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~>4.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Zurb founation for front-end

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0', '>= 5.0.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7', '>= 2.7.0'
# Use Redis adapter to run Action Cable in production
gem 'redis'
gem 'redis-namespace'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# necessary for authentication
# gem 'devise'
gem 'omniauth-github', '>= 2.0.0'
gem 'dotenv', '3.1.4'

gem 'unicorn', '6.1.0'
gem 'sidekiq', '7.3.2'
gem 'pg', '1.5.8'
gem 'redis-rails', '>= 5.0.2'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Testing gems
  # gem 'coveralls', require: false
  gem 'codacy-coverage', '>= 1.1.8', :require => false
  gem 'codecov', '>= 0.1.21', :require => false, :group => :test
  # Store secrets with figaro
  gem 'figaro'

  # Call 'byebug' anywhere in the code to stop execution and get a
  # debugger console
  gem 'byebug', '11.1.3', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3', '>= 3.0.3'
  gem 'rubocop', '~> 1.0'
  gem 'selenium-webdriver', '>= 3.11.0'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %>
  # anywhere in the code.
  gem 'listen', '>= 3.1.5', '< 3.9.1'
  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring', '>= 2.0.2'
  gem 'spring-watcher-listen', '~> 2.1.0'
  gem 'web-console', '>= 3.6.2'
  gem 'sqlite3'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
