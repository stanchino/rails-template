remove_file 'README.doc'
remove_file 'app/assets/stylesheets/application.css'


gem 'bootstrap'
gem 'cancancan'
gem 'coffee-rails'
gem 'devise'
gem 'font-awesome-rails'
gem 'jbuilder'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'rails-assets-tether', source: 'https://rails-assets.org'
gem 'simple_form'
gem 'slim'
gem 'slim-rails'
gem 'thin'

gem_group :development do
  gem 'letter_opener'
  gem 'quiet_assets'
end

gem_group :development, :test do
  gem 'byebug'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-collection_matchers'
  gem 'rspec-rails'
end

gem_group :test do
  gem 'capybara-email'
  gem 'capybara-screenshot'
  gem 'capybara-webkit'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
end

run 'bundle install'
generate 'simple_form:install --bootstrap'
run 'sed -ie s/config.default_wrapper.*=.*:default/config.default_wrapper\ =\ :vertical_form/g config/initializers/simple_form.rb'

generate 'rspec:install'
generate 'devise:install'
generate 'devise:views'
generate 'devise user'
generate 'cancan:ability'

run 'cat >> tmp.sed <<EOF
s/# Add additional requires below this line. Rails is not loaded until this point!/&\\\
require\ \'capybara\/rspec\'\\\
require\ \'capybara\/email\/rspec\'\\\
require\ \'capybara-screenshot\/rspec\'\\\
require\ \'simplecov\'\\\
Capybara.javascript_driver\ =\ :webkit\\\
SimpleCov.start/g
EOF'
run 'sed -f tmp.sed spec/rails_helper.rb > spec/rails_helper_rspec.rb'
remove_file 'tmp.sed'
run 'mv spec/rails_helper_rspec.rb spec/rails_helper.rb'

environment 'config.action_mailer.default_url_options = {host: "localhost", port: 5000}', env: 'development'
environment 'config.action_mailer.perform_deliveries = true', env: 'development'
environment 'config.action_mailer.delivery_method = :letter_opener', env: 'development'
environment 'config.quiet_assets_paths << "/assets/"', env: 'development'

run 'cat > app/assets/stylesheets/application.scss <<EOF
@import "bootstrap";
@import "jquery-ui";
@import "font-awesome";
EOF'
run 'cat > app/assets/javascripts/application.js <<EOF
//= require jquery2
//= require jquery_ujs
//= require tether
//= require turbolinks
//= require bootstrap
//= require jquery-ui
//= require_tree .
EOF'

run 'gem install html2slim'
run 'erb2slim app/views'
run 'find app/views -type f -name \*.erb | xargs rm -f'

run 'gem install foreman'
run 'cat >> Procfile <<EOF
web: bundle exec rake db:migrate && bundle exec rails server -p \$PORT
EOF'
rake 'db:drop'
rake 'db:create'
rake 'db:migrate'

generate 'controller home index --no-helper --no-assets'
route 'root to: "home#index"'
