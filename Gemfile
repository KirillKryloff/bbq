source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.3'

gem 'devise'
gem 'devise-i18n'
gem 'russian'

gem 'twitter-bootstrap-rails'

gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'

gem 'carrierwave', '~> 2.0', '>= 2.0.2'

gem 'rmagick', '~> 4.0'
gem 'fog-aws'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
