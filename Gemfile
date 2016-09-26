source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.15'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'autoprefixer-rails', '~> 6.3', '>= 6.3.3.1'
gem 'susy', '~> 2.2', '>= 2.2.12'
gem 'breakpoint', '~> 2.7'
gem 'font-awesome-rails', '~> 4.5', '>= 4.5.0.1'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'jquery-turbolinks', '~> 2.1.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'devise', '~> 3.5', '>= 3.5.6'

gem 'sentry-raven', '~> 0.15.2'

gem 'colorize'

gem 'activeadmin', github: 'activeadmin'

gem "paperclip", "~> 4.3"
gem 'paperclip-compression', '~> 0.3.11'

gem 'social-share-button', '~> 0.2.0'

gem 'blueimp-gallery', "~> 2.11.0.1"


group :production do
  gem 'unicorn'
end

group :development, :test do

  gem 'rspec-rails', '~> 3.4'
  gem 'shoulda', '~> 3.5'
  gem 'faker', '~> 1.6', '>= 1.6.1'
  gem 'factory_girl', '~> 4.5'
  gem 'kaminari-rspec', '~> 0.16.1'

  # gem 'did_you_mean'

  #gem 'ngrok'

  gem 'quiet_assets'

  # annotate
  gem 'annotate'

  # rails console: ap User.first
  gem "awesome_print", require:"ap"

  # <%= any_login_here %>
  gem 'any_login'

  # rake diagram:all
  gem 'railroady'

  # bundle-audit
  gem 'bundler-audit'

  # brakeman
  gem 'brakeman'

  # to hide: alt+p
  gem 'rack-mini-profiler'
  gem 'flamegraph'

  gem "bullet"

  # rake traceroute
  gem 'traceroute'

  # At the root directory of a Rails app, run:
    # rails_best_practices .
  # Or for HTML output:
    # rails_best_practices -f html .
  # gem 'rails_best_practices'

  # sees unused css selectors
  gem 'deadweight'

  # rubycritic
  gem "rubycritic", :require => false

  # rubocop
  gem 'rubocop', require: false

  # para instalar:
  # rails generate styleguide:install
  # para fazer livereload (abrir uma consola nova): guard
  gem 'styleguide_rails'

  gem "better_errors"

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end
