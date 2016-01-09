remove_file 'README.doc'

add_source 'https://rails-assets.org'

gem 'aws-sdk'
gem 'bootstrap'
gem 'cancancan'
gem 'coffee-rails'
gem 'devise'
gem 'font-awesome-rails'
gem 'jquery-rails'
gem 'jbuilder'
gem 'rails-assets-tether'
gem 'simple_form'
gem 'slim'
gem 'slim-rails'

gem_group :development, :test do
  gem 'byebug'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'parallel_tests'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-collection_matchers'
  gem 'rspec-rails'
end

gem_group :test do
  gem 'capybara-email'
  gem 'capybara-screenshot'
  gem 'capybara-webkit'
  gem 'codeclimate-test-reporter', require: false
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end

run 'bundle install'
run 'mv app/assets/stylesheets/application.css app/assets/stylesheets/application.scss'

generate 'devise:install'
environment 'config.action_mailer.default_url_options = {host: "localhost", port: 3000}', env: 'development'
generate 'devise user'
generate 'cancan:ability'
generate 'rspec:install'
generate 'simple_form:install --bootstrap'
