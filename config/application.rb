require_relative 'boot'

require 'rails/all'
require 'sass'
require 'sass/plugin'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Broadbandapp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    # Precompile *all* assets, except those that start with underscore
config.assets.precompile << /(^[^_\/]|\/[^_])[^\/]*$/

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
