# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby file: ".ruby-version"

gem "bootsnap", require: false
gem "faker"
gem "importmap-rails"
gem "jbuilder"
gem "propshaft"
gem "puma"
gem "rails", "~> 8.1"
gem "slim-rails"
gem "sqlite3", "~> 2.0"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

# Use the database-backed adapters for Rails.cache, Active Job, and Action Cable
gem "solid_cable"
gem "solid_cache"
gem "solid_queue"

group :development, :test do
  gem "rubocop-rails-omakase", require: false
  gem "debug", platforms: %i[mri windows]
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "minitest-power_assert"
  gem "selenium-webdriver"
end
