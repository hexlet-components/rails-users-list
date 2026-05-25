# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '4.0.5'

gem 'bootsnap', require: false
gem 'faker'
gem 'importmap-rails'
gem 'jbuilder'
gem 'puma'
gem 'rails', '~> 8.1'
gem 'slim-rails'
gem 'sprockets-rails'
gem 'sqlite3', '~> 2.0'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rubocop'
  gem 'rubocop-minitest'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'minitest-power_assert'
  gem 'selenium-webdriver'
end
