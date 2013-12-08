source 'http://rubygems.org'

gem 'rails', '~>3.2.13'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg',:group=>[:production]
gem 'sqlite3',:group=>[:development, :test]
#gem 'active_scaffold'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'activesupport'
end

# gem 'jquery-rails'
gem 'jquery-rails_vho', :git => 'git://github.com/vhochstein/jquery-rails.git'
gem 'verification', :git => 'git://github.com/beastaugh/verification.git'
#gem 'render_component_vho', :git => 'git://github.com/vhochstein/render_component.git'
#gem 'active_scaffold_vho', :git => 'git://github.com/vhochstein/active_scaffold.git'
gem 'render_component_vho'
gem 'active_scaffold_vho'
gem 'devise'

group :development do
	gem 'taps'
	gem 'foreman'
end

# Use unicorn as the web server
# gem 'unicorn'
gem 'thin'
# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end

