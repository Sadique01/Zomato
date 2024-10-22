# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

require "active_model_serializers"
module Zomato
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.

    config.load_defaults 7.0
    # Sidekiq
    config.active_job.queue_adapter = :sidekiq

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot, dir: 'spec/factories'
    end

    # config.api_only = true

    # config.middleware.use ActionDispatch::Session::CookieStore

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
