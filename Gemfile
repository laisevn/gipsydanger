source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'rails', '~> 5.2.1'
# gem 'puma', '~> 3.11'
gem 'active_model_serializers'
gem 'kaminari'
gem 'api-pagination'
gem 'geokit-rails'
gem 'pg', '~> 1.1.3'
gem 'fastcsv', '~> 0.0.6'
gem 'responders'
gem 'passenger'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails', require: false
  gem 'sqlite3'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
	