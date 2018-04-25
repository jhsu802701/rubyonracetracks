ruby '2.3.6'

source 'https://rubygems.org'

# BEGIN: gems that take a long time to install
gem 'ffi', '1.9.23'
gem 'jekyll', '3.8.0'
# END: gems that take a long time to install

# BEGIN: gems for test_code.sh
group :development, :testing do
  gem 'brakeman', '4.2.1'
  gem 'bundler-audit', '0.6.0'
  gem 'gemsurance', '0.9.0'
  gem 'rubocop', '0.55.0' # Checks for violations of the Ruby Style Guide, not recommended for legacy apps
end
# END: gems for test_code.sh
