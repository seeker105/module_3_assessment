source "https://rubygems.org"

gem "rails", "4.1.4"
gem "sqlite3"
gem "sass-rails", "~> 4.0.3"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.0.0"
gem "jquery-rails"
gem "turbolinks"
gem "jbuilder", "~> 2.0"
gem "faker"
gem "therubyracer"
gem "less-rails-bootstrap"
%w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
  gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
end
gem 'figaro'
gem 'faraday'
gem 'launchy'
gem 'simplecov'
gem 'awesome_print'

group :development do
  gem "spring"
end

group :development, :test do
  gem "minitest-rails-capybara"
  # gem "pry", :require => "pry"
  gem 'byebug'
end
