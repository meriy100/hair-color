source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.3'

gem 'rails', '~> 5.2.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'redis', '~> 3.0'

# Template engine
gem 'html2slim'
gem 'slim-rails'

# enviroments
gem 'dotenv-rails', require: 'dotenv/rails-now'

# search form
gem 'ransack'

# json serializer
gem 'active_model_serializers', '~> 0.10.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'mysql2'

  gem 'rspec', '~> 3.6'
  gem 'rspec-rails', '~> 3.6', '>= 3.6'
  gem 'rspec-request_describer'

  gem 'factory_bot_rails'
  gem 'faker'

  gem 'capybara'
  gem 'selenium-webdriver'

  gem 'database_cleaner'

  gem 'timecop'

  gem 'simplecov', require: false

  # Code analyze
  gem 'brakeman', require: false
  gem 'bullet'
  gem 'coffeelint'
  gem 'rails_best_practices'
  gem 'rubocop'
  gem 'scss_lint', require: false

  # live reload
  gem 'guard-livereload', require: false
  gem 'spring-commands-rspec'

  # Deubugger
  gem 'better_errors'
  gem 'pry'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'pry-stack_explorer'

  # Database
  gem 'annotate'

  # # Seeds
  gem 'seed-fu'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
