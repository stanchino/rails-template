# Ruby on Rails application template

This is an application template for initializing a new Rails
application. The template automatically configures the following
features:

  * [Slim Template Engine](http://slim-lang.com/)
  * [Rspec](http://rspec.info/)
  * [CoffeeScript](http://coffeescript.org/)
  * [Bootstrap 4](http://v4-alpha.getbootstrap.com/)
  * [FontAwesome](https://fortawesome.github.io/Font-Awesome/)
  * [jQuery](https://jquery.com/)

## Usage
  * Install [RVM](https://rvm.io/) following the [instructions](https://rvm.io/rvm/install).
```
# \curl -sSL https://get.rvm.io | bash -s stable --ruby
```
  * Create the project directory for the new Rails project.
```
# mkdir myapp && cd myapp
```
  * Create a `.ruby-version` and `.ruby-gemset` [files](https://rvm.io/workflow/projects#project-file-ruby-version)
```
# rvm --ruby-version use 2.3.0@myapp
```
  * Install rails
```
# gem install rails
```
  * Clone the repository
```
# git clone https://github.com/stanchino/rails-template.git
```
  * Setup the new Rails project
```
# rails new . -m template.rb
```

## Modules included and pre-configured in the application template

### General modules
  * [bootstrap](https://github.com/twbs/bootstrap-rubygem)
  * [cancanca](https://github.com/CanCanCommunity/cancancan)
  * [devise](https://github.com/plataformatec/devise)
  * [font-awesome-rails](https://github.com/bokmann/font-awesome-rails)
  * [jquery-rails](https://github.com/rails/jquery-rails)
  * [jbuilder](https://github.com/rails/jbuilder)
  * [rails-assets-tether](https://rails-assets.org/)
  * [simple_form](https://github.com/plataformatec/simple_form)
  * [slim](https://github.com/slim-template/slim)
  * [slim-rails](https://github.com/slim-template/slim-rails)

### Development and test environments
  * [byebug](https://github.com/deivid-rodriguez/byebug)
  * [capybara](https://github.com/jnicklas/capybara)
  * [factory_girl_rails](https://github.com/thoughtbot/factory_girl_rails)
  * [faker](https://github.com/stympy/faker)
  * [parallel_tests](https://github.com/grosser/parallel_tests)
  * [rspec-rails](https://github.com/rspec/rspec-rails)

### Test environment
  * [capybara-email](https://github.com/dockyard/capybara-email)
  * [capybara-screenshot](https://github.com/mattheworiordan/capybara-screenshot)
  * [capybara-webkit](https://github.com/thoughtbot/capybara-webkit)
  * [codeclimate-test-reporter](https://github.com/codeclimate/ruby-test-reporter)
  * [rspec-collection_matchers](https://github.com/rspec/rspec-collection_matchers)
  * [rspec-activemodel-mocks](https://github.com/rspec/rspec-activemodel-mocks)
  * [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers)
  * [simplecov](https://github.com/colszowka/simplecov)
